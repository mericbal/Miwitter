# validations
# username has to be more than 3 
#first and last = more than 2
Hashtag.destroy_all
# User.destroy_all
# Tweet.destroy_all
# Like.destroy_all
# Dislike.destroy_all
# Follow.destroy_all
#
# puts 'Destroyed all tables !'
#

# u1 = User.create(first: 'aa', last: 'bb', username: 'aaa', email: 'aaa', password: 'aaa')
# u2 = User.create(first: 'bb', last: 'bb', username: 'bbb', email: 'bbb', password: 'bbb')
# User.create(username: 'ccc', email: 'ccc', password: 'ccc')
#
# p 'Created users !'
#

# 2.times do
# 	Tweet.create(body: Faker::Lorem.sentence, user_id: 1)
# end
# 2.times do
# 	Tweet.create(body: Faker::Lorem.sentence, user_id: 2)
# end
# 2.times do
# 	Tweet.create(body: Faker::Lorem.sentence, user_id: 3)
# end
#
# p 'Created Tweets !'
#

# 4.times do |x|
# 	Like.create(user_id: x, tweet_id: 1)
# 	Like.create(user_id: x, tweet_id: 3)
# 	Like.create(user_id: x, tweet_id: 5)
# end

# 4.times do |x|
# 	Dislike.create(user_id: x, tweet_id: 2)
# 	Dislike.create(user_id: x, tweet_id: 4)
# 	Dislike.create(user_id: x, tweet_id: 6)
# end
#
# p 'Added Likes and Dislikes !'
#

# Follow.create(follower_id: 1, followed_user_id: 2)
# Follow.create(follower_id: 1, followed_user_id: 3)

# Follow.create(follower_id: 3, followed_user_id: 2)

# puts 'Follows added !'

# a = %w( #cars #instagram #twitterclone #icerdemiyiz #beautiful #valentinesday #edho #berkergeldi #parayok #siyaset #politics #sims4 #fallout4 #healtylife #lifestyle #software #frontend #backend #developer #devlife )
# a.each do |x|
# 	Hashtag.create(name: x)
# end
# puts 'Hashtags added !'

# #
# Tweet.create(body: 'I love coding a lot', user_id: 1)
# TweetHashtag.create(tweet_id: 7, hashtag_id: 20)
# #

# #
# puts 'Seed complete !'
# #