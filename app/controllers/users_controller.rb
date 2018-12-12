class UsersController < ApplicationController
  def update
    user = User.find(params[:id])
    avatar = Badge.find(params[:badge_id])
    user.badge = avatar.challenge.poster
    user.save
    redirect_to badges_path
  end
end
