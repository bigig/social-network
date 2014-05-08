class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :about, :birthday, :email, :first_name, :last_name, :password, :password_confirmation

  validates_uniqueness_of :email

  has_many :messages
end
