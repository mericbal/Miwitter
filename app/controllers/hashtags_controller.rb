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
		unless @hashtag.name.start_with?("#") == true
			redirect_to hashtags_path, alert: 'has to start with #'
		else
			if current_user && @hashtag.private == false then @hashtag.user_id = current_user.id end
			if @hashtag.save
				redirect_to hashtag_path(@hashtag), notice: 'hashtag has been created'
			else
				redirect_to hashtags_path, alert: 'hashtag is either too short or there is another hashtag with this name' 
			end
		end
	end

	private

	def hashtag_params
		params.require(:hashtag).permit(:name, :private)
	end

end
