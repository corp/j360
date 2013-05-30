class Product < ActiveRecord::Base
  attr_accessible :name, :price, :sku
  has_and_belongs_to_many :invoices
end
