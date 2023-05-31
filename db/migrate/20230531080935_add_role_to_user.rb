class AddRoleToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :role, :string, null: false, default: 'client'
  end
end
