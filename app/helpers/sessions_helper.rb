module SessionsHelper

	def login(user)
		session[:user_id] = user.id
	end

	def logout
		session.clear
	end

	# def current_user
	# 	User.find(session[:user_id]) if session[:user_id]
	# end

	# or 
	def current_user
		@current_user ||= User.find(session[:user_id]) if session[:user_id]
	end

end