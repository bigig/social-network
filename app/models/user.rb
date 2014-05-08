class User < ActiveRecord::Base
  has_attached_file :avatar,
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml")

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_secure_password

  attr_accessible :about, :birthday, :email, :first_name, :last_name, :password, :password_confirmation, :avatar

  validates_uniqueness_of :email

  has_many :messages
end
