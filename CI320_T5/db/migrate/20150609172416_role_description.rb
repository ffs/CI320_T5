class RoleDescription < ActiveRecord::Migration
  def change
  	rename_column :roles, :role_description, :description
  end
end
