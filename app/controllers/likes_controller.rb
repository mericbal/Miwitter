class LikesController < ApplicationController
	before_action :set_user, only: [:like, :dislike]
	
	include SessionsHelper

	def like
		@tweet = Tweet.find(params[:tweet_id])
		@tweet.liked_users << current_user
		redirect_to user_path(@user)
	end

	def dislike
		@tweet = Tweet.find(params[:tweet_id])
		@tweet.disliked_users << current_user
		redirect_to user_path(@user)
	end

	private

	def set_user
		@user = User.find(params[:user_id])
	end

end