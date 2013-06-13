class Invoice < ActiveRecord::Base
  belongs_to :client
  has_many :items
  has_many :products, :through=>:items
  accepts_nested_attributes_for :items, allow_destroy: true
  after_create :calculate_total
  
  def calculate_total
    total = 0
    self.items.each do |item|
      total += item.product.price * item.quantity.to_f
    end
    self.total = total
    self.save
  end
end
