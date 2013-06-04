class AddProfilePictureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :profile_pictue, :string
  end
end
