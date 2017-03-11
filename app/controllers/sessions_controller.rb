class SessionsController < ApplicationController

	include SessionsHelper

	def new
		@user = User.new
	end

	def create
		@user = User.find_by(email: params[:email]) || @user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
			login(@user)
			flash[:notice] = "Login successful."
			redirect_to user_path(@user)
		else
			# flash[:error] = "login failed !"
			@error = "login failed !"
			render :new
		end
	end

	def destroy
		logout
		redirect_to login_path
	end
end