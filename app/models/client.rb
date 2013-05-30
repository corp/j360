class Client < ActiveRecord::Base
  validates :name, :presence => true
  validates :lastname, :presence => true
  has_many :invoices
  attr_accessible :age, :email, :is_active, :lastname, :name
  
  scope :dropdown, order("name ASC, lastname ASC")
  
  #def self.dropdown
  #  order("name ASC, lastname ASC")
  #end
  
  def full_name
    "#{name} #{lastname}"
  end
end
