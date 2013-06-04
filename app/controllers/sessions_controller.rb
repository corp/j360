class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.where(:email=>params[:email]).first
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Has iniciado sesion"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Has cerrado sesion"
  end
end
