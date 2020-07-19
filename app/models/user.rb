class User < ApplicationRecord
  validates :name, length: { in: 1..15 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX, }
  VALID_PASSWORD_REGEX = /\A(?=\d{0,99}+[a-z])(?=[a-z]{0,99}\d)[a-z\d]{8,32}+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX, } 
  has_secure_password
end
