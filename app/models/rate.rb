class Rate < ApplicationRecord
  belongs_to :post
  validates :rating, numericality: { only_integer:             true,
                                     greater_than_or_equal_to: 1,
                                     less_than_or_equal_to:    5 }
  validates :post_id, presence: true
  after_save :update_post

  private

    def update_post
      post = self.post
      rate = rating
      post.update_rating! rate
    end
end
