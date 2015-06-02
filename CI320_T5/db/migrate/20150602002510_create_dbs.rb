class CreateDbs < ActiveRecord::Migration
  def change
    create_table :dbs do |t|
      t.string :db_name
      t.string :version
      t.float :growthRate
      t.date :clonedate
      t.string :cpu
      t.string :memory
      t.string :storage

      t.timestamps
    end
  end
end
