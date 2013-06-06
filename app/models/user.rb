class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation
  
  def reset_password!
    self.password = self.password_confirmation = "1234567890"
    self.save
  end
end
