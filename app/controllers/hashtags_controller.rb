class HashtagsController < ApplicationController

	def index
		@hashtags = Hashtag.all.order(name: :asc)
	end

	def show
		@hashtag = Hashtag.find(params[:id])
	end

end