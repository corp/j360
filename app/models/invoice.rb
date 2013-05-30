class Invoice < ActiveRecord::Base
  belongs_to :client
  has_and_belongs_to_many :products
  
  attr_accessible :total, :client_id, :product_ids, :total
  
  validates :client, :presence => true
  
  after_create :calculate_totals
  
  def calculate_totals
    self.total = products.sum(:price)
    self.save
  end
end
