class AddFSoftwareRefToFSoftwareInst < ActiveRecord::Migration
  def change
    add_reference :f_software_insts, :f_software, index: true
  end
end
