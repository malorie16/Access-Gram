class Post < ApplicationRecord
  validates :image, attachment_presence: true
  has_attached_file :image, styles: { medium: "640x640>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  belongs_to :user
  has_many :hashtags
  validates :title, length: {maximum: 50}
  validates :body, length: {maximum: 100}
end
