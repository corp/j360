class AddIndexesForClients < ActiveRecord::Migration
  def up
     add_index(:clients, [:name,:lastname,:age], :name => 'clients_by_fullname')
  end

  def down
     remove_index(:clients,:name => 'clients_by_fullname')
  end
end
