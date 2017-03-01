class LikesController < ApplicationController
	before_action :set_user, only: [:like, :dislike]

	include SessionsHelper

	def like
		@tweet = Tweet.find(params[:tweet_id])
		if @tweet.liked_users.include?(current_user)
			@tweet.liked_users.delete(current_user)
		else
			@tweet.liked_users << current_user
		end
		redirect_to user_path(@user)
	end

	def dislike
		@tweet = Tweet.find(params[:tweet_id])
		if @tweet.disliked_users.include?(current_user)
			@tweet.disliked_users.delete(current_user)
		else
			@tweet.disliked_users << current_user
		end
		redirect_to user_path(@user)
	end

	private

	def set_user
		@user = User.find(params[:user_id])
	end

end