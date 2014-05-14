class Message < ActiveRecord::Base
  attr_accessible :body, :dialog_id, :user_id

  belongs_to :user
  belongs_to :dialog
end
