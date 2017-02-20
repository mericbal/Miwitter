Rails.application.routes.draw do
	get '/' => 'apps#index'
	resources :users, only: [:new, :create]
end
