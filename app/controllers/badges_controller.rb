class BadgesController < ApplicationController
  def index
    @badges = Badge.all
  end

  def show
    @badge = Badge.find(params[:id])
    @challenge = current_user.challenge
  end
end
