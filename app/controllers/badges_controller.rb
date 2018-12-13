class BadgesController < ApplicationController
  def index
    @badges = Badge.all
    @challenges = Challenge.all
    @count = 0
    @badges.each do |badge|
      @count += 1 if badge.challenge.done?(current_user)
    end
  end

  def show
    @badge = Badge.find(params[:id])
  end
end
