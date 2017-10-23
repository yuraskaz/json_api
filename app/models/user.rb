class User < ApplicationRecord
	has_many :posts

	 def self.post_owner(login)
       user = find_by_login(login)
     if user&.persisted?
       user
     else
       User.create!(login: login)
    end
  end
end
