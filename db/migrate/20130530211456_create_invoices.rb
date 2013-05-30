class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.float :total
      t.references :client

      t.timestamps
    end
    add_index :invoices, :client_id
  end
end
