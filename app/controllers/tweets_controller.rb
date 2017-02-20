class TweetsController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@tweets = @user.tweets
	end

end