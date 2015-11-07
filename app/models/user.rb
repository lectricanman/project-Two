class User < ActiveRecord::Base
  has_many :posts
  has_many :replys
  has_secure_password

  validates :email, presence: true
  validates :email, email_format: {message: "Enter a valid email address"}
end
