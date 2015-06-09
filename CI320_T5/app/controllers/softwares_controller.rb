class SoftwaresController < ApplicationController
  load_and_authorize_resource
  
  # GET /softwares
  # GET /softwares.json
  def index
    @fsoftwares = FSoftware.all
    @isoftwares = ISoftware.all
    @dbs = Db.all
  end

end
