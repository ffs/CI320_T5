class AddISoftwareRefToISoftwareInst < ActiveRecord::Migration
  def change
    add_reference :i_software_insts, :i_software, index: true
  end
end
