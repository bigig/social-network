class LikesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.likes.create!
    redirect_to @user
  end
end
