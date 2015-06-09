class DbsController < ApplicationController
  load_and_authorize_resource
  before_action :set_db, only: [:show, :edit, :update, :destroy]

  # GET /dbs
  # GET /dbs.json
  def index
    @dbs = Db.all
  end

  # GET /dbs/1
  # GET /dbs/1.json
  def show
  end

  # GET /dbs/new
  def new
    @db = Db.new
  end

  # GET /dbs/1/edit
  def edit
  end

  # POST /dbs
  # POST /dbs.json
  def create
    @db = Db.new(db_params)

    respond_to do |format|
      if @db.save
        format.html { redirect_to @db, notice: 'Db was successfully created.' }
        format.json { render :show, status: :created, location: @db }
      else
        format.html { render :new }
        format.json { render json: @db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dbs/1
  # PATCH/PUT /dbs/1.json
  def update
    respond_to do |format|
      if @db.update(db_params)
        format.html { redirect_to @db, notice: 'Db was successfully updated.' }
        format.json { render :show, status: :ok, location: @db }
      else
        format.html { render :edit }
        format.json { render json: @db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dbs/1
  # DELETE /dbs/1.json
  def destroy
    @db.destroy
    respond_to do |format|
      format.html { redirect_to dbs_url, notice: 'Db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_db
      @db = Db.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def db_params
      params.require(:db).permit(:db_name, :version, :growthRate, :clonedate, :cpu, :memory, :storage)
    end
end
