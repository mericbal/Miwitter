module FollowsHelper

	def follows?(user)
		following_users.include?(user)
	end

	def followed_by?(user)
		followed_users.include?(user)
	end

	def follow(user)
		following_users << user
	end

	def unfollow(user)
		following_users.delete(user)
	end

end