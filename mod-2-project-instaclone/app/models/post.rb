class Post < ApplicationRecord
  belongs_to :user
  has_many :post_hashtags
  has_many :hashtags, through: :post_hashtags
  validates :image, attachment_presence: true
  has_attached_file :image, styles: { medium: "640x640>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, length: {maximum: 50}
  validates :body, length: {maximum: 100}

  # def hashtag=(hashtag)
  #   hashtag = Hashtag.find_or_create_by(name: hashtag)
  #
  # end
end
