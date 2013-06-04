class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.where(:email=>params[:email]).first
    if @user and @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Logeado exitosamente"
    else
      redirect_to login_path, notice: "Error en su usuario o contrasenia"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Cerro sesion exitosamente"
  end
end
