class FollowsController < ApplicationController
	before_action :set_user, only: [:follow, :unfollow]
	include FollowsHelper
	include SessionsHelper

	def follow
		current_user.follow(@user)
		redirect_to user_path(@user)
	end
		# if @user.followed_by?(current_user)

		# else
		# 	current_user.follow(@user)
		# end
	# end

	def unfollow
		current_user.unfollow(@user)
		redirect_to user_path(@user)
	end

	private 

	def set_user
		@user = User.find(params[:user_id])
	end
end