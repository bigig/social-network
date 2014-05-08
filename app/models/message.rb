class Message < ActiveRecord::Base
  attr_accessible :body, :receiver_id, :user_id

  belongs_to :user
  belongs_to :receiver, class_name: 'User', foreign_key: :receiver_id
end
