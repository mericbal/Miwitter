class User < ApplicationRecord
	has_secure_password
	has_many :tweets
	has_many :likes
	has_many :liked_tweets, through: :likes, source: :tweet
	
	validates :username, :email, presence: true
	validates :username, :email, uniqueness: true
	validates :password, length: { minimum: 3, too_short: ' has to be more than %{count} characters. ' }

	def full_info
		'username=' + self.username.to_s + ' email=' + self.email.to_s + ' pass=' + self.password.to_s
	end

end

