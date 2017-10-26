require 'faker'

100.times do |user_num|
  user = User.create(login: "#{Faker::Name.name}#{user_num}")
  2000.times do |post_num|
        post = Post.create(title:     "#{Faker::Hipster.sentence}#{post_num}",
                               body:  "#{Faker::Hipster.paragraph}#{post_num}",
                               ip: Faker::Internet.public_ip_v4_address.to_s,
                               user_id:  user.id)
    next unless post_num % 3 == 0
    rand(5..20).times do
      Rate.create(rating: rand(1..5), post_id: post.id)
    end
  end
end
