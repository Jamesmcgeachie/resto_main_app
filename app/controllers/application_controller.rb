class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
  	@current_user = User.find_by_id(session[:user_id])
  end
  helper_method :current_user
  # the above makes the current user available in the views

  def authenticate_user
  	unless current_user
  		redirect_to login_path
	end
  end

end
