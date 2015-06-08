class SoftwaresController < ApplicationController

  # GET /softwares
  # GET /softwares.json
  def index
    @fsoftwares = FSoftware.all
    @isoftwares = ISoftware.all
    @dbs = Db.all
  end

end
