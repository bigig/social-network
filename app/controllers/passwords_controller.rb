class PasswordsController < ApplicationController

  def reset
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user.confirmed?(params[:question], params[:answer])
      @user.update_attribute :password, params[:password]
      redirect_to login_path
    else
      render :reset
    end
  end
end
