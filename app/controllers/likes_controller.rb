class LikesController < ApplicationController

	include SessionsHelper

	def like
		@tweet = Tweet.find(params[:tweet_id])
		@tweet.liked_users << current_user
		redirect_to user_path(current_user)
	end

	def dislike
		@tweet = Tweet.find(params[:tweet_id])
		@tweet.disliked_users << current_user
		redirect_to user_path(current_user)
	end

end