require "selenium-webdriver"
require 'nokogiri'
require 'open-uri'

class InsectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :show, :create]
  def new
    @insect = Insect.new
    # @collection = Collection.new
  end

  def show
    @insect = Insect.find(params[:id])
    @collection = Collection.find(params[:collection_id])
  end

  def create
    @collection = Collection.new
    @collection.picture = insect_params[:photo]
    options = Selenium::WebDriver::Chrome::Options.new
    options.add_argument('--headless')
    driver = Selenium::WebDriver.for :chrome, options: options
    driver.navigate.to "https://www.inaturalist.org/computer_vision_demo"
    file = @collection.picture.file.file
    button = driver.find_element(:xpath => "//*[@id='app']/div/div/input")
    button.send_key file
    classify = driver.find_element(:class => "classify")
    sleep(2)
    classify.click
    sleep(3)
    link = driver.find_element(:xpath => "//*[@id='app']/div/div/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/span" )
    names = link.attribute("title").split('(')
    puts common_name = names.first
    scientific_name = names.last.tr(')', '')

    join_scientific_species = scientific_name.gsub(' ','_')

    url = "https://en.wikipedia.org/wiki/#{join_scientific_species}"

    html_file = open(url).read
    html_doc = Nokogiri::HTML(html_file)
    puts description = html_doc.xpath('//*[@id="mw-content-text"]/div/p[2]').text
    danger_array = ['venom', 'pois', 'dang', 'bit', 'sting', 'widow', 'wasp', 'bee', 'bullet ant' ,'tarantula hawk', 'bull ant', 'yellowjacket' ,'harvester ant', 'butterfly']
    dangerous = false
    dangerous = true if danger_array.any? { |danger| description.include? danger }
    text = html_doc.search('.infobox.biota').text.split(' ')
    classification_hash = {}

    class_array = ['Kingdom:', 'Class:', 'Order:', 'Family:']
    text.each_with_index do |word, index|
      if class_array.include?(word)
        word = word.gsub(':','')

        classification_hash[word] = text[index + 1]
      end
    end
    puts classification_hash
    @insect = Insect.find_by_name(scientific_name)
    if @insect.nil?
      @insect = Insect.new
      @insect.name = common_name
      @insect.description = description
      @insect.scientific_name = scientific_name
      @insect.kingdom = classification_hash['Kingdom']
      @insect.class_insect = classification_hash['Class']
      @insect.order = classification_hash['Order']
      @insect.family = classification_hash['Family']
      @insect.dangerous = dangerous
      @insect.save!
    end
    @collection.insect = @insect
    @collection.save!

    redirect_to insect_path(@insect, collection_id: @collection.id)
  end

  def insect_params
    params.require(:insect).permit(:photo)
  end
end
