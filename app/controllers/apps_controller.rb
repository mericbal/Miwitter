class AppsController < ApplicationController

	include SessionsHelper

	def index
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