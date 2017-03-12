class SessionsController < ApplicationController

	include SessionsHelper

	def new
		@user = User.new
	end

	def create
		@user = User.find_by(email: params[:email]) || @user = User.find_by(username: params[:username])
		if @user && @user.authenticate(params[:password])
			login(@user)
			redirect_to user_path(@user), flash: { notice: "Signed in as #{@user.first}." }
		else
			# flash[:alert] = "login failed !"
			# @error = "login failed !"
			# render :new, flash: { notice: 'llll' }
			redirect_to login_path, flash: { alert: 'login failed !!!' }
		end
	end

	def destroy
		logout
		redirect_to login_path, flash: { notice: 'successfully logged out !'}
	end
end