class Post < ApplicationRecord
  belongs_to :user
  has_many :rate
  validates :title, :body, presence: true

  scope :by_rate, lambda { |top = 5|
    data = joins(:rate).select(
      'posts.id, posts.title as title, posts.body as body,
      avg(rates.rating) as average_rate'
    ).group('posts.id').order('average_rate DESC').limit(top)
    data.map { |d| [d.title, d.body, d.average_rate.to_f] }
  }
  def rating_average_value
    rates.average(:rating).to_f
  end
end
