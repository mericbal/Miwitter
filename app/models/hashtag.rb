class Hashtag < ApplicationRecord
	has_many :tweet_hashtags
	has_many :tweets, through: :tweet_hashtags

	validates :name, uniqueness: true, presence: true, length: { minimum: 3, too_short: 'has to be more than %{count} characters.' }
end
