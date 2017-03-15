class NewsfeedsController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@following_users = @user.following_users
		@tweets = []

		@following_users.each do |u|
			u.tweets.order(created_at: :desc).where(private: false).each do |t|
				@tweets << t
			end
		end
	end

end