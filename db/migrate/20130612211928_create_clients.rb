class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :age
      t.boolean :is_active

      t.timestamps
    end
  end
end
