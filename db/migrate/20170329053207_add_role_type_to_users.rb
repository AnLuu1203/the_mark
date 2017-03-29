class AddRoleTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role_type, :string, null: false, default: ''
  end
end
