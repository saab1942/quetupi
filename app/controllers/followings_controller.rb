class FollowingsController < ApplicationController

before_action :authenticate_user!

  def create
    @user = User.find(params[:user_id])
    following = current_user.followings.build(following_user: @user) #se usa build porque esto es una relacion no se puede un new
    @success = following.save
  end


end
