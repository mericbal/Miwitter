class HashtagsController < ApplicationController

	def index
		@hashtags = Hashtag.all.order(name: :asc)
	end

	def show
		@hashtag = Hashtag.find(params[:id])
	end

	def new
		@hashtag = Hashtag.new()
	end

	def create
		@hashtag = Hashtag.new(params[:name])
		if @hashtag.save
			redirect_to hashtag_path(@hashtag)
		else
			render :new
		end
	end

end