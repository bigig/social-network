class Dialog < ActiveRecord::Base
  attr_accessible :first_user_id, :second_user_id

  belongs_to :first_user, class_name: 'User'
  belongs_to :second_user, class_name: 'User'

  has_many :messages

  def opponent_to user
    [first_user, second_user].delete(user)
  end
end
