class TweetsController < ApplicationController
	before_action :set_user, only: [:new, :create]
	def index
		# @tweets = @user.tweets
	end

	def new
		@tweet = Tweet.new()
	end

	def create
		@tweet = Tweet.new(tweet_params)
		if @tweet.save
		else
		end
	end

	private

	def set_user
		@user = User.find(params[:user_id])
	end

	def tweet_params
		params.require(:tweet).permit(:body)
	end
end