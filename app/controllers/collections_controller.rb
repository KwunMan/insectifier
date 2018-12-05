class CollectionsController < ApplicationController
  def index
    @collection = current_user.insects
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.user = current_user
    @collection.insect = Insect.find_by_name("ladybug")
    # @collection.user = User.find(params[current_user])
    @collection.save!
    if @collection.save
      redirect_to insect_path(@collection.insect)
    else
      render :new
    end
  end

  private
  def collection_params
    params.require(:collection).permit(:picture)
  end

end
