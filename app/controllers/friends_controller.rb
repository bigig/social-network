class FriendsController < ApplicationController
  def index
    @friends = current_user.friends
    @requests = current_user.requests
  end

  def new
    @user = User.find(params[:user_id])
    @user.requests << current_user
  end

  def create
    @user = User.find(params[:user_id])
    current_user.requests.delete(@user)
    current_user.friends << @user
    redirect_to friends_url
  end

  def destroy
    @user = User.find(params[:id])
    current_user.friends.delete(@user)
    redirect_to friends_url
  end
end
