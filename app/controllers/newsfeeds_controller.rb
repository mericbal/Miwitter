class NewsfeedController < ApplicationController

	def index
		@user = User.find(params[:user_id])
		@users = current_user.following_users.where(private: false).order(created_at: :desc)
	end

end