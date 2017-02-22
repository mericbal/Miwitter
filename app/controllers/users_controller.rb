class UsersController < ApplicationController
	before_action :set_user, only: [:show, :destroy]

	include SessionsHelper
	
	def new
		@user = User.new()
	end

	def create
		@user = User.new(user_params)
		if @user.save
			login(@user)
			redirect_to user_path(@user)
		else
			@errors = @user.errors.full_messages
			render :new
		end
	end

	def show
		@tweet = Tweet.new
		@tweets = @user.tweets.order(created_at: :desc)
	end

	def destroy
		logout
		@user.destroy
		redirect_to '/'
	end


	private 

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

end