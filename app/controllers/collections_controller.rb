class CollectionsController < ApplicationController
  def index
    @collection = current_user.insects
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    @collection.user = User.find(params[:user_id])
    @collection.save
    if @collection.save
      redirect_to collecton_path(params[:user_id])
    else
      render :new
    end
  end

  private
  def collection_params
    params.require(:collection).permit(:picture)
  end

end
