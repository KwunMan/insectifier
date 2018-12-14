class CollectionsController < ApplicationController

  def index
    @collections = Collection.where(user_id: current_user).order("created_at DESC")

    if params[:search].present?
      collections = @collections.select do |collection|
        collection.insect.name.downcase.include?("#{params[:search]}".downcase)
      end
      @collections = collections
      @collections = @collections.flatten
    end

    @unique_collections = @collections.reverse.uniq { |c| c.insect_id }
    @collection_score = 250*@unique_collections.size
  end

  def show
    find_collection = Collection.find(params[:id])
    @encounters = current_user.collections.select { |collection| collection.insect.name == find_collection.insect.name}
    @collection = @encounters.last
    @encounters.pop

    @encounters =@encounters.reverse


    # raise
    collections = Collection.where(user_id: current_user).order("created_at DESC")

    collections = collections.reverse.uniq { |c| c.insect_id }

    @number = collections.index { |c| c.id == find_collection.id }

  end

  def new
    @collection = Collection.new
  end

  def update
    @collection = Collection.find(params[:id])
    @collection.update(collection_params)
    @collection.user = current_user
    @collection.save
    redirect_to collections_path
  end

  ################ THIS IS JUST FOR SNEAK PEAK, WILL BE REMOVED AFTER AND PUT INSIDE
  ################ CHALLENGE CONTROLLER
  def challenge
  end

  private

  def collection_params
    params.require(:collection).permit(:picture, :insect_id)
  end
end
