class HashtagsController < ApplicationController

	def index
		@hashtags = Hashtag.all.order(name: :asc)
	end

end