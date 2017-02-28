class AppsController < ApplicationController

	include SessionsHelper

	def index
		@tweet = Tweet.new
	end

	def newsfeed
		@user = User.find(params[:user_id])
	end

	# def secure
	# 	@user = current_user
	# end

	# def secured
	# 	pass = params[:control]
	# 	if current_user.password == pass
	# 		redirect_to '/'
	# 	else
	# 		render :secure
	# 	end
	# end

end