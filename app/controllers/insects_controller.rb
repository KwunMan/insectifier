class InsectsController < ApplicationController
  def show
    @insect = Insect.find(params[:id])
  end
end
