class CreateInvoicesProducts < ActiveRecord::Migration
  def change
    create_table :invoices_products do |t|
      t.references :invoice
      t.references :product
      t.timestamps
    end
  end
end
