class TweetsController < ApplicationController
	before_action :set_user, only: [:new, :create, :destroy]

	# def index
	# 	@tweets = @user.tweets
	# end

	def new
		@tweet = Tweet.new()
	end

	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.user_id = @user.id
		if @tweet.save
			@user.tweets << @tweet
			# redirect_to "/users/#{@user.id}#tweets"
			redirect_to user_path(@user)
		else
			render :new
		end
	end

	def destroy
		@tweet = Tweet.find(params[:id])
		@tweet.destroy
		redirect_to user_path(@user)
	end

	private

	def set_user
		@user = User.find(params[:user_id])
	end

	def tweet_params
		params.require(:tweet).permit(:body)
	end

end