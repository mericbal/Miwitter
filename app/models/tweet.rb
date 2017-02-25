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

	def posted_when?
	  t = ((Time.now - created_at)/60).round # minutes ago
	  case t 
		  when 0..1 then ' just now '
		  when 1..59 then 'About ' + t.to_s + ' mins ago'
		  when 60..1439 then 'About ' + (t/60).round.to_s + ' hours ago'
		  when 1440..34560 then 'About ' + (t/1440).round.to_s + ' days ago'
	  end
	end
end
