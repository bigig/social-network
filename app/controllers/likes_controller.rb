class LikesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user.likes.create!(from_id: current_user.id)
    redirect_to @user
  end
end
