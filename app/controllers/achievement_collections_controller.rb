class AchievementCollectionsController < ApplicationController
  def create
    @achievement_collection = AchievementCollection.new
    @achievement_collection.challenge = Challenge.find(params[:challenge_id])
    @achievement_collection.user = current_user
    @achievement_collection.save
    redirect_to challenges_path
  end
end
