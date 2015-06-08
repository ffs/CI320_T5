class RemoveUserEmailFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :user_email, :string
  end
end
