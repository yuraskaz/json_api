class Post < ApplicationRecord
  has_many :rate
  belongs_to :user

  
end
