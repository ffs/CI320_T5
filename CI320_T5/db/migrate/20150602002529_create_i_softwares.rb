class CreateISoftwares < ActiveRecord::Migration
  def change
    create_table :i_softwares do |t|
      t.string :i_software_name
      t.string :version

      t.timestamps
    end
  end
end
