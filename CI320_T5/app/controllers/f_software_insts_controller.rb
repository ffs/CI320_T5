class FSoftwareInstsController < ApplicationController
  load_and_authorize_resource
  before_action :set_f_software_inst, only: [:show, :edit, :update, :destroy]

  # GET /f_software_insts
  # GET /f_software_insts.json
  def index
    @f_software_insts = FSoftwareInst.all
  end

  # GET /f_software_insts/1
  # GET /f_software_insts/1.json
  def show
  end

  # GET /f_software_insts/new
  def new
    @f_software_inst = FSoftwareInst.new
  end

  # GET /f_software_insts/1/edit
  def edit
  end

  # POST /f_software_insts
  # POST /f_software_insts.json
  def create
    @f_software_inst = FSoftwareInst.new(f_software_inst_params)

    respond_to do |format|
      if @f_software_inst.save
        format.html { redirect_to @f_software_inst, notice: 'F software inst was successfully created.' }
        format.json { render :show, status: :created, location: @f_software_inst }
      else
        format.html { render :new }
        format.json { render json: @f_software_inst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_software_insts/1
  # PATCH/PUT /f_software_insts/1.json
  def update
    respond_to do |format|
      if @f_software_inst.update(f_software_inst_params)
        format.html { redirect_to @f_software_inst, notice: 'F software inst was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_software_inst }
      else
        format.html { render :edit }
        format.json { render json: @f_software_inst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_software_insts/1
  # DELETE /f_software_insts/1.json
  def destroy
    @f_software_inst.destroy
    respond_to do |format|
      format.html { redirect_to f_software_insts_url, notice: 'F software inst was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_software_inst
      @f_software_inst = FSoftwareInst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_software_inst_params
      params.require(:f_software_inst).permit(:f_software_inst_name, :server_id, :f_software_id)
    end
end
