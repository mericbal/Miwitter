Rails.application.routes.draw do
	get '/' => 'apps#index'
	get '/login' => 'sessions#new'
	post 'login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'
	# get '/secure' => 'apps#secure'
	# post '/secure' => 'apps#secured'
	resources :users, only: [:new, :create, :show, :destroy] do 
		resources :tweets, only: [:new, :create, :destroy]
	end
	resources :hashtags, only: [:index, :show, :new, :create]

	get '/follow' => "follows#follow"
	get '/unfollow' => 'follows#unfollow'

end
