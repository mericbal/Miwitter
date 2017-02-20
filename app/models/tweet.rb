class Tweet < ApplicationRecord
	belongs_to :user
	has_many :likes
	has_many :liked_users, through: :likes, source: :user
	has_many :dislikes
	has_many :disliked_users, through: :dislikes, source: :user
end
