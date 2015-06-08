class InstancesController < ApplicationController

  # GET /softwares
  # GET /softwares.json
  def index
    @fSoftwareInsts = FSoftwareInst.all
    @iSoftwareInsts = ISoftwareInst.all
    @dbInsts = DbInst.all
  end

end
