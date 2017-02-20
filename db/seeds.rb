User.destroy_all
Tweet.destroy_all
Like.destroy_all
#
puts 'Destroyed all tables !'
#

User.create(username: 'a', email: 'a', password: 'aaa')
User.create(username: 'b', email: 'b', password: 'bbb')
User.create(username: 'c', email: 'c', password: 'ccc')


2.times do
	Tweet.create(body: Faker::Lorem.sentence, user_id: 1)
end
2.times do
	Tweet.create(body: Faker::Lorem.sentence, user_id: 2)
end
2.times do
	Tweet.create(body: Faker::Lorem.sentence, user_id: 3)
end

4.times do |x|
	Like.create(user_id: x, tweet_id: 1)
	Like.create(user_id: x, tweet_id: 3)
	Like.create(user_id: x, tweet_id: 5)
end




#
puts 'Seed complete !'
#