class UsersController < ApplicationController
	before_action :find_user, only: [:show, :destroy]

	include SessionsHelper
	
	def new
		@user = User.new()
	end

	def create
		@user = User.new(user_params)
		if @user.save
			login(@user)
			redirect_to user_path(@user), flash: { notice: 'Registered succesfully.'}
		else
			@errors = @user.errors.full_messages
			render :new
		end
	end

	def show
		@tweet = Tweet.new
		if @user == current_user
			@tweets = @user.tweets.order(created_at: :desc)
		else
			@tweets = @user.tweets.where(private: false).order(created_at: :desc)
		end
	end

	def destroy
		logout
		@user.destroy
		redirect_to '/'
	end


	private 

	def find_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:first, :last, :username, :email, :password, :avatar)
	end

end