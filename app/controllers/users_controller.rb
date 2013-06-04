#!/bin/env ruby
# encoding: utf-8
class UsersController < ApplicationController
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html{ redirect_to root_path, notice: "Bienvenido!!"}
      else
        format.html{ render action: "new" }
      end
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html{ redirect_to root_path, notice: "Bienvenido!!"}
      else
        format.html{ render action: "edit" }
      end
    end
  end

  def recovery_password
    @user = User.new
  end
  
  def send_recovery_email
    @user = User.where(:email=>params[:user][:email]).first
    if !@user.nil?
      @user.reset_password
      UserMailer.password_recovery(@user).deliver
      redirect_to root_path, notice: "Su correo de recuperacion de contraseña ha sido enviado"
    else
      render :action=>"recovery_password"
    end
  end

end
