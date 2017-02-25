class Tweet < ApplicationRecord
	belongs_to :user

	#likes and dislikes
	has_many :likes
	has_many :liked_users, through: :likes, source: :user
	has_many :dislikes
	has_many :disliked_users, through: :dislikes, source: :user

	#Hashtags
	has_many :tweet_hashtags
	has_many :hashtags, through: :tweet_hashtags

	def since?
    ((Time.now - created_at)/3600).round # hours ago
  end

end
