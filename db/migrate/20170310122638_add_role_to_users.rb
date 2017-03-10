class AddRoleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :role, :interger, :default => 0
  end
end
