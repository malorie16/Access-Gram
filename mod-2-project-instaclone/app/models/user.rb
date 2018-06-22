class User < ApplicationRecord
  has_many :posts
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :email, uniqueness: true
  validates :name, length: {maximum: 40}
  validates :email, length: {maximum: 75}
  validates :password, length: {maximum: 20}
end
