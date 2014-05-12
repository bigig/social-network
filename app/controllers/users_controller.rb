class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
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
    if @user.save
      session[:user_id] = @user.id
      redirect_to edit_user_url(current_user), notice: "Thank you for signing up!"
    else
      render "new"
    end
  end
end
