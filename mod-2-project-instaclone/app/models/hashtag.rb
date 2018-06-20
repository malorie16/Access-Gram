class Hashtag < ApplicationRecord
  has_many :posts, through: :post_hashtags
end
