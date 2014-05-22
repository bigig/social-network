class UsersController < ApplicationController

  before_filter :current_user?, only: [:edit, :update]

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.where("id=#{params[:id]}").first
  end

  def update
    @user = User.where("id=#{params[:id]}").first
    @user.question = Question.new(params[:question])
    if @user.update_attributes(params[:user])
      redirect_to current_user, notice: "Your profile updated successfully"
    else
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:user])
    if @user.save!
      cookies[:auth_token] = @user.auth_token
      redirect_to edit_user_url(current_user), notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
end
