class HashtagsController < ApplicationController

	def index
		@hashtag = Hashtag.new()
		@hashtags = Hashtag.all.order(created_at: :desc)
	end

	def show
		@hashtag = Hashtag.find(params[:id])
	end

	def new
		@hashtag = Hashtag.new()
	end

	def create
		@hashtag = Hashtag.new(hashtag_params)
		if @hashtag.save
			redirect_to hashtag_path(@hashtag)
		else
			render :new
		end
	end

	private

	def hashtag_params
		params.require(:hashtag).permit(:name)
	end

end