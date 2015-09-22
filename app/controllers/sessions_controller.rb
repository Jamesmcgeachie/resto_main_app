class SessionsController < ApplicationController

	#show login form
	def new
	end

	#handling login form
	def create
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id 
			redirect_to cuisine_types_path
		else
			render :new
		end
	end

	#logout
	def destroy
		session[:user_id] = nil
		redirect_to cuisine_types_path
	end

end