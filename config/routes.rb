Rails.application.routes.draw do
	
	# login # logout
	get '/' => 'sessions#new'
	get '/login' => 'sessions#new'
	post 'login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

	# user nested routes
	resources :users, only: [:new, :create, :show, :destroy] do 
		resources :tweets, only: [:new, :create, :destroy] do 
			get '/like' => "likes#like"
			get '/dislike' => "likes#dislike"
		end
		get '/follow' => "follows#follow"
		get '/unfollow' => 'follows#unfollow'
		get '/newsfeed' => 'newsfeeds#index'
	end

	# hashtags
	resources :hashtags, only: [:index, :show, :new, :create] do
		post '/new' => "hashtags_tweets#create"
	end

end
