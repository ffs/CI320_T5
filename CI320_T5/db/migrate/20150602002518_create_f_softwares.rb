class CreateFSoftwares < ActiveRecord::Migration
  def change
    create_table :f_softwares do |t|
      t.string :f_software_name
      t.string :cpu
      t.string :memory
      t.string :storage
      t.string :version

      t.timestamps
    end
  end
end
