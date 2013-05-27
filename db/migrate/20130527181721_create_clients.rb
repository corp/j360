class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name, :limit=>30
      t.string :lastname, :limit=>30
      t.string :email, :limit=>100
      t.integer :age, :default=>18
      t.boolean :is_active, :default=>true

      t.timestamps
    end
  end
end
