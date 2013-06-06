class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def authorize_attributes(resorce,private_attributes={})
    authorized_attributes = params.require(resource.to_sym) - private_attributes
    params.require(resource.to_sym).permit(authorized_attributes)
  end
end
