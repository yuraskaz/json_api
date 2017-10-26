class Post < ApplicationRecord
  

  belongs_to :user
  has_many :rate
  validates :title, :body, presence: true

  scope :by_rate, lambda { |top = '1$'|
    data = joins(:rate).select(
      'posts.id, posts.title as title, posts.body as body,
      avg(rates.rating) as average_rates'
    ).group('posts.id').order('average_rates DESC').limit(top)
    data.map { |d| [d.title, d.body, d.average_rate.to_f]}
  }
  def rating_average_value
    rates.average(:rating).to_f
  end

  
end
