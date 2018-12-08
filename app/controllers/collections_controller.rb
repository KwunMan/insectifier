class CollectionsController < ApplicationController

  def index
    @collections = Collection.where(user_id: current_user)
    if params[:search].present?
      collections = @collections.select do |collection|
        collection.insect.name.downcase.include?("#{params[:search]}")
      end
      @collections = collections
      @collections = @collections.flatten
    end
  end

  def show
    @collection = Collection.find(params[:id])
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
