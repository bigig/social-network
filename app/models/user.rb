class User < ActiveRecord::Base
  has_attached_file :avatar,
    :storage => :dropbox,
    :styles => {
      :thumb => '100x100#',
      :large => '300x300#'
    },
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :default_url => 'images/default_avatar.png'

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_secure_password

  attr_accessible :about, :birthday, :email, :first_name, :last_name, :password, :password_confirmation, :avatar

  validates_uniqueness_of :email

  has_many :messages
  has_many :friends, class_name: 'User', foreign_key: 'friend_id'
  has_many :requests, class_name: 'User', foreign_key: 'requested_id'

  def full_name
    "#{first_name} #{last_name}"
  end

  def has_friend? user
    self == user || friends.include?(user)
  end
end
