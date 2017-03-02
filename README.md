# Miwitter

A little Twitter clone .. :)


# Deployed to Heroku at : 'https://miwitter.herokuapp.com/'


# Nested routes 

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
```