class User < ApplicationRecord
  has_secure_password
  has_many :posts
  validates :email, uniqueness: true
  validates :name, length: {maximum: 40}
  validates :email, length: {maximum: 75}
  validates :password, length: {maximum: 20}
end
