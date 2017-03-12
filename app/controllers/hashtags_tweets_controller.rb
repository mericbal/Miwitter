class HashtagsTweetsController < ApplicationController 

	include SessionsHelper

	def create 
		@tweet = Tweet.new(tweet_params)
		@hashtag = Hashtag.find(params[:hashtag_id])
		@tweets = @hashtag.tweets
		@tweet.user_id = current_user.id
		if @tweet.save
			@hashtag.tweets << @tweet
			redirect_to @hashtag, notice: 'your tweet has been added.'
		else
			redirect_to @hashtag, alert: 'make sure your tweet is between 6 to 160 characters !'
		end
	end
	
	private

	def tweet_params
		params.require(:tweet).permit(:body, :private)
	end

end