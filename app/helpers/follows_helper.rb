module FollowsHelper

	def follows?(user)
		followed_users.include?(user)
	end

	def follow(user)
		followed_users << user
	end

	def unfollow(user)
		followed_users.delete(user)
		user.following.delete
	end

end