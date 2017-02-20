User.create(username: 'a', email: 'a', password: 'aaa')
User.create(username: 'b', email: 'b', password: 'bbb')
User.create(username: 'c', email: 'c', password: 'ccc')


10.times do
	Tweet.create(body: Faker::Lorem.sentence, user_id: 1)
end
10.times do
	Tweet.create(body: Faker::Lorem.sentence, user_id: 2)
end
10.times do
	Tweet.create(body: Faker::Lorem.sentence, user_id: 3)
end

#
puts 'Seed complete !'
#