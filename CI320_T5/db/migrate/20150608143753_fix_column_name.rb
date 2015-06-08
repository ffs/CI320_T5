class FixColumnName < ActiveRecord::Migration
  def change
  	def self.up
    	rename_column :users, :user_name, :name
  	end
  end
end
