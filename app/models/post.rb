class Post < ApplicationRecord
  has_many :rate
  belongs_to :user

  def username=(var)
    self.user = User.find_or_create_by(username: var)
  end

  def username
    user.login
  end
end
