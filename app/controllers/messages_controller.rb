class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def new
  end

  def create
    @receiver = User.find_by_email params[:to]
    if @receiver
      @message = current_user.messages.create!(receiver_id: @receiver.id, body: params[:body])
      redirect_to root_url, notice: "Message sent."
    else
      flash.now.alert = "Invalid user name!"
      render "new"
    end
  end
end
