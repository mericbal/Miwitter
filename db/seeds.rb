# validations
# username has to be more than 3 

User.destroy_all
Tweet.destroy_all
Like.destroy_all
Dislike.destroy_all
Follow.destroy_all
#
puts 'Destroyed all tables !'
#

User.create(username: 'aaa', email: 'aaa', password: 'aaa')
User.create(username: 'bbb', email: 'bbb', password: 'bbb')
User.create(username: 'ccc', email: 'ccc', password: 'ccc')
#
p 'Created users !'
#

2.times do
	Tweet.create(body: Faker::Lorem.sentence, user_id: 1)
end
2.times do
	Tweet.create(body: Faker::Lorem.sentence, user_id: 2)
end
2.times do
	Tweet.create(body: Faker::Lorem.sentence, user_id: 3)
end
#
p 'Created Tweets !'
#

4.times do |x|
	Like.create(user_id: x, tweet_id: 1)
	Like.create(user_id: x, tweet_id: 3)
	Like.create(user_id: x, tweet_id: 5)
end

4.times do |x|
	Dislike.create(user_id: x, tweet_id: 2)
	Dislike.create(user_id: x, tweet_id: 4)
	Dislike.create(user_id: x, tweet_id: 6)
end
#
p 'Added Likes and Dislikes !'
#

Follow.create(follower_id: 1, followed_user_id: 2)
Follow.create(follower_id: 1, followed_user_id: 3)

Follow.create(follower_id: 3, followed_user_id: 2)

puts 'Follow added !'


#
puts 'Seed complete !'
#