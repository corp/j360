class ApplicationController < ActionController::Base
  protect_from_forgery
  def authorise
    @user = User.find(session[:user_id]) rescue nil
    redirect_to new_session_path, notice: "Tienes que iniciar sesion" unless !@user.nil?
  end
  
  def current_user
    @user ||= User.find(session[:user_id]) rescue nil
  end
  helper_method :current_user
  
  def user_signin?
    !current_user.nil?
  end
  helper_method :user_signin?
  
end
