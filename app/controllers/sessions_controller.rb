class SessionsController < ApplicationController
	def new
	end

	def create
		#find
		user = User.find_by(email:params[:login][:email])
		#authenticates user
		if user && user.authenticate(params[:login][:password])
			#connects cookie to user
			session[:user_id] = user.id.to_s
			#redirect to index	
			redirect_to users_path
		else
			render:new
		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to login_path
	end
end