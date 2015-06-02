class AddServerRefToISoftwareInst < ActiveRecord::Migration
  def change
    add_reference :i_software_insts, :server, index: true
  end
end
