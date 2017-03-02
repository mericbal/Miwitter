class SessionsController < ApplicationController

	include SessionsHelper

	def new
		@user = User.new
	end

	def create
		@user = User.find_by(email: params[:email])
		if @user && @user.authenticate(params[:password])
			login(@user)
			redirect_to user_path(@user)
		else
			@error = "login failed !"
			render :new
		end
	end

	def destroy
		logout
		redirect_to login_path
	end
end