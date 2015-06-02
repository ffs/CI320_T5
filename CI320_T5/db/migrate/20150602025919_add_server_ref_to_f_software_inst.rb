class AddServerRefToFSoftwareInst < ActiveRecord::Migration
  def change
    add_reference :f_software_insts, :server, index: true
  end
end
