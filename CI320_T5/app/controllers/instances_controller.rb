class InstancesController < ApplicationController
	before_filter :get_user

  # GET /softwares
  # GET /softwares.json
  def index
    @fSoftwareInsts = FSoftwareInst.all
    @iSoftwareInsts = ISoftwareInst.all
    @dbInsts = DbInst.all
  end

  private

  	def get_user
      @user = current_user
    end

end
