class CreateDbInsts < ActiveRecord::Migration
  def change
    create_table :db_insts do |t|
      t.string :db_inst_name

      t.timestamps
    end
  end
end
