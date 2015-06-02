class AddServerRefToDbInst < ActiveRecord::Migration
  def change
    add_reference :db_insts, :server, index: true
  end
end
