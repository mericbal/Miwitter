class User < ApplicationRecord
	has_secure_password
	
	# tweets
	has_many :tweets
	has_many :likes
	has_many :liked_tweets, through: :likes, source: :tweet
	has_many :dislikes
	has_many :disliked_tweets, through: :dislikes, source: :tweet

	# follows
	has_many :follows, foreign_key: :follower_id, inverse_of: :follower
	has_many :followed_users, through: :follows, source: :followed_user
	has_many :following, class_name: 'Follow', foreign_key: :followed_user_id, inverse_of: :followed_user
	has_many :following_users, through: :following, source: :follower
	
	#validations
	validates :username, :email, presence: true
	validates :username, :email, uniqueness: true
	validates :password, length: { minimum: 3, too_short: ' has to be more than %{count} characters. ' }

	def full_info
		'username=' + self.username.to_s + ' email=' + self.email.to_s + ' pass=' + self.password_digest.to_s
	end

end

