class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
  end

  def index
    @challenges = Challenge.all
    @score = 0
    @challenges.each do |challenge|
      if challenge.done?
        @score += challenge.score
      end
    end
  end

  def update
    @challenge = Challenge.find(params[:id])
    if current_user.insects.find_by family: @challenge.family
      @challenge.done = true
      @challenge.save
    end
    redirect_to challenges_path
  end
end
