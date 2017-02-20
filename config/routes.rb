Rails.application.routes.draw do
	get '/' => 'apps#index'
	get '/login' => 'sessions#new'
	get '/logout' => 'sessions#destroy'
	resources :users, only: [:new, :create]
end
