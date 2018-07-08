class Hashtag < ApplicationRecord
  has_many :post_hashtags
  has_many :posts, through: :post_hashtags
  validates :name, uniqueness: true

  def add_a_hashtag
    arr = self.split(' ')
    arr.map do |hsh|
      if hsh.include?('#')
        hsh
      else
        '#'+ hsh
      end
    end
    arr.join(' ')
  end
end
