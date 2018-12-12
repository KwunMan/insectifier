class ChallengesController < ApplicationController
  def index
    @challenges = Challenge.all
    @score = 0
    @challenges.each do |challenge|
      if challenge.done?(current_user)
        @score += challenge.score
      end
    end
  end


  def show
    @challenge = Challenge.find(params[:id])
    @achievement_collection = AchievementCollection.new

  def leaderboard
    users = User.all
    @users = users.sort {|aa, bb| bb.challenge_score <=> aa.challenge_score}

  end
end
