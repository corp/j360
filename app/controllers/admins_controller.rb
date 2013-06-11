class AdminsController < ApplicationController
  before_filter :authenticate_admin!
  def upload_avatar
    @admin = Admin.find(params[:id])
    @admin.delay.deliver_mail
  end

  def upload_avatar_save
    @admin = Admin.find(params[:id])
    if @admin.update_attributes(params[:admin]) 
      redirect_to root_path, notice: "Se cambio su imagen de avatar"
    else
      render action: "upload_avatar"
    end
  end
end
