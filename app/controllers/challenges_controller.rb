class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
    @achievement_collection = AchievementCollection.new
  end

  def index
    @challenges = Challenge.all
    @score = 0
    @challenges.each do |challenge|
      if challenge.done?(current_user)
        @score += challenge.score
      end
    end
  end

  def leaderboard
    users = User.all
    @users = users.sort {|aa, bb| bb.challenge_score <=> aa.challenge_score}
  end
end
