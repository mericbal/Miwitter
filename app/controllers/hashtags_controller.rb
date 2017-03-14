class HashtagsController < ApplicationController
	include SessionsHelper

	def index
		@hashtag = Hashtag.new()
		@hashtags = Hashtag.all.order(created_at: :desc)
		@tweet = Tweet.new
	end

	def show
		@hashtag = Hashtag.find(params[:id])
		@tweets = @hashtag.tweets
		@tweet = Tweet.new
	end

	def new
		@hashtag = Hashtag.new()
	end

	def create
		@hashtag = Hashtag.new(hashtag_params)
		if current_user && @hashtag.private == false
			@hashtag.user_id = current_user.id
		end
		if @hashtag.save
			redirect_to hashtag_path(@hashtag), notice: 'hashtag has been created .'
		else 
			render :new 
		end
	end

	private

	def hashtag_params
		params.require(:hashtag).permit(:name, :private)
	end

end
