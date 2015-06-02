class DbInstsController < ApplicationController
  before_action :set_db_inst, only: [:show, :edit, :update, :destroy]

  # GET /db_insts
  # GET /db_insts.json
  def index
    @db_insts = DbInst.all
  end

  # GET /db_insts/1
  # GET /db_insts/1.json
  def show
  end

  # GET /db_insts/new
  def new
    @db_inst = DbInst.new
  end

  # GET /db_insts/1/edit
  def edit
  end

  # POST /db_insts
  # POST /db_insts.json
  def create
    @db_inst = DbInst.new(db_inst_params)

    respond_to do |format|
      if @db_inst.save
        format.html { redirect_to @db_inst, notice: 'Db inst was successfully created.' }
        format.json { render :show, status: :created, location: @db_inst }
      else
        format.html { render :new }
        format.json { render json: @db_inst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /db_insts/1
  # PATCH/PUT /db_insts/1.json
  def update
    respond_to do |format|
      if @db_inst.update(db_inst_params)
        format.html { redirect_to @db_inst, notice: 'Db inst was successfully updated.' }
        format.json { render :show, status: :ok, location: @db_inst }
      else
        format.html { render :edit }
        format.json { render json: @db_inst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /db_insts/1
  # DELETE /db_insts/1.json
  def destroy
    @db_inst.destroy
    respond_to do |format|
      format.html { redirect_to db_insts_url, notice: 'Db inst was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_db_inst
      @db_inst = DbInst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def db_inst_params
      params.require(:db_inst).permit(:db_inst_name)
    end
end
