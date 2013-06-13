class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.float :total
      t.integer :client_id

      t.timestamps
    end
  end
end
