class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :server_name
      t.string :cpu
      t.string :memory
      t.string :storage
      t.string :ip_address
      t.string :oper_sys

      t.timestamps
    end
  end
end
