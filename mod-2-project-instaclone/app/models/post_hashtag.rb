class PostHashtag < ApplicationRecord
  belongs_to :post
  belongs_to :hashtag

  # def change_to_hashtag=(string)
  #   hashtag = Hashtag.find_or_create_by(name: string)
  #   hashtag = hashtag.add_a_hashtag
  #   self.body = hashtag
  # end
  # def change_to_hashtag
  #   self.body
  # end
end
