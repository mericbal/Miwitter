module LikesHelper

	def add_likes(user)
		liked_users << user
	end

	def add_dislikes(user)
		disliked_users << user
	end

end