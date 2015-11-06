class User < ActiveRecord::Base
  has_many :threads
  has_many :replys
  has_secure_password

  validates :email, presence: true
  validates :email, email_format: {message: "Enter a valid email address"}
  validates :password, length: {in: 6..20}
  validates :password_confirmation, presence: true
end
