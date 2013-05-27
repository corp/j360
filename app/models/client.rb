class Client < ActiveRecord::Base
  validates :name, :presence => true
  validates :lastname, :presence => true
  
  attr_accessible :age, :email, :is_active, :lastname, :name
end
