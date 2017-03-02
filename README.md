# Miwitter

Little Twitter .. :)

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

```ruby
resources :users, only: [:new, :create, :show, :destroy] do 
		resources :tweets, only: [:new, :create, :destroy] do 
			get '/like' => "likes#like"
			get '/dislike' => "likes#dislike"
		end
		get '/follow' => "follows#follow"
		get '/unfollow' => 'follows#unfollow'
		get '/newsfeed' => 'apps#newsfeed'
	end
	resources :hashtags, only: [:index, :show, :new, :create]
```