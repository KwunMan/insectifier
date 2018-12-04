class CollectionController < ApplicationController
  def index
    @collection = current_user.insects
  end
end
