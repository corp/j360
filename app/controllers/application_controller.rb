class ApplicationController < ActionController::Base
  protect_from_forgery
  def current_user
    @current_user ||= User.find(session[:user_id]) rescue nil
  end
  helper_method :current_user
  
  def authorize
    redirect_to login_path if current_user.nil?
  end
end
