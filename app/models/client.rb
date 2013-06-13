class Client < ActiveRecord::Base
  has_many :invoices
  
  def fullname
    "#{name} #{lastname}".titleize
  end
end
