module LikesHelper

	def like(user)
		liked_users << user
	end

	def dislike(users)
		disliked_users << user
	end

end