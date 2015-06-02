class CreateISoftwareInsts < ActiveRecord::Migration
  def change
    create_table :i_software_insts do |t|
      t.string :i_software_inst_name

      t.timestamps
    end
  end
end
