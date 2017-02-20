Rails.application.routes.draw do
	get '/' => 'apps#index'
	get '/login' => 'sessions#new'
	post 'login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'
	resources :users, only: [:new, :create, :show]
end
