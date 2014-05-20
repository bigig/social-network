class PasswordResetsController < ApplicationController

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user
      redirect_to edit_password_reset_url @user
    else
      render :new
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.confirmed?(params[:answer])
      @user.update_attribute :password, params[:password]
      redirect_to login_path
    else
      render :edit
    end
  end
end
