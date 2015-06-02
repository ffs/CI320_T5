class CreateFSoftwareInsts < ActiveRecord::Migration
  def change
    create_table :f_software_insts do |t|
      t.string :f_software_inst_name

      t.timestamps
    end
  end
end
