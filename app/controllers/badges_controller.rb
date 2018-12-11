class BadgesController < ApplicationController
  def index
    @badges = Badge.all
    @challenges = Challenge.all
  end

  def show
    @badge = Badge.find(params[:id])
  end
end
