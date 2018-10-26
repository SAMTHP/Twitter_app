require 'faker'

10.times do |n|
   User.create(name:Faker::FunnyName.name, email: Faker::Internet.email)
end

20.times do |m|
  Privatemessage.create(object: "Tweet_Message", content: Faker::StarWars.quote, sender_id:rand(User.first.id..User.last.id))
end

20.times do |t|
  Privatemessage.find(rand(1..10)).recipients << User.find(rand(1..20))
end

20.times do |m|
  Tweet.create(content: Faker::StarWars.quote, author_id:rand(User.first.id..User.last.id), liker_id:rand(User.first.id..User.last.id))
end

20.times do |t|
  Tweet.find(Tweet.first.id + t).tweet_recipients << User.find(rand(User.first.id..User.last.id))
end

20.times do |t|
  Tweet.find(Tweet.first.id + t).liker_recipients << User.find(rand(User.first.id..User.last.id))
end

20.times do |m|
  Follower.create(user_follower_id:rand(User.first.id..User.last.id))
end

20.times do |t|
  Follower.find(Follower.first.id + t).following << User.find(rand(User.first.id..User.last.id))
end