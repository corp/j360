class WelcomeController < ApplicationController
  def index
    unless params[:var].blank?
      puts "Variable usando ajax #{params[:var]}"
      respond_to do |format|
        sleep(2)
        format.html{ render partial: "welcome_partial"}
        format.json{ render json: {return_msg: "Hola mundo desde el servidor"} }
      end
    end
  end
end
