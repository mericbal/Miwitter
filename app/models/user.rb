class User < ApplicationRecord
	has_secure_password
	include FollowsHelper

	# paperclip
	has_attached_file :avatar, styles: { large: "500x500", medium: "300x300>", thumb: "100x100>" }, default_url: "anon1.jpeg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

	# tweets
	has_many :tweets
	has_many :likes
	has_many :liked_tweets, through: :likes, source: :tweet
	has_many :dislikes
	has_many :disliked_tweets, through: :dislikes, source: :tweet

	# follows
	has_many :follows, foreign_key: :follower_id, inverse_of: :follower, dependent: :destroy
	has_many :followed_users, through: :follows, source: :followed_user, dependent: :destroy
	has_many :following, class_name: 'Follow', foreign_key: :followed_user_id, inverse_of: :followed_user, dependent: :destroy
	has_many :following_users, through: :following, source: :follower, dependent: :destroy
	
	#validations
	validates :username, :email, presence: true
	validates :username, :email, uniqueness: true
	validates :username, length: {minimum: 3, too_short: 'has to be more than %{count} characters.'}
	# validates :password#, length: { minimum: 3, too_short: ' has to be more than %{count} characters. ' }

	def full_info
		'username=' + self.username.to_s + ' email=' + self.email.to_s + ' pass=' + self.password_digest.to_s
	end

end

