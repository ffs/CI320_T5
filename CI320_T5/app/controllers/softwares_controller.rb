class SoftwaresController < ApplicationController
  	before_filter :get_user
  # GET /softwares
  # GET /softwares.json
  def index
    @fsoftwares = FSoftware.all
    @isoftwares = ISoftware.all
    @dbs = Db.all

  end

  	private

  	def get_user
      @user = current_user
    end

end
