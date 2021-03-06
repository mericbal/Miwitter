class FollowsController < ApplicationController
	before_action :set_user, only: [:follow, :unfollow]
	
	include FollowsHelper
	include SessionsHelper

	def follow
		current_user.follow(@user)
		redirect_to user_path(@user), notice: 'added to follows'
	end

	def unfollow
		current_user.unfollow(@user)
		redirect_to user_path(@user), alert: 'not following'
	end

	private 

	def set_user
		@user = User.find(params[:user_id])
	end
end