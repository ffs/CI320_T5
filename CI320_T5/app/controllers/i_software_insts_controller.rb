class ISoftwareInstsController < ApplicationController
  before_action :set_i_software_inst, only: [:show, :edit, :update, :destroy]

  # GET /i_software_insts
  # GET /i_software_insts.json
  def index
    @i_software_insts = ISoftwareInst.all
  end

  # GET /i_software_insts/1
  # GET /i_software_insts/1.json
  def show
  end

  # GET /i_software_insts/new
  def new
    @i_software_inst = ISoftwareInst.new
  end

  # GET /i_software_insts/1/edit
  def edit
  end

  # POST /i_software_insts
  # POST /i_software_insts.json
  def create
    @i_software_inst = ISoftwareInst.new(i_software_inst_params)

    respond_to do |format|
      if @i_software_inst.save
        format.html { redirect_to @i_software_inst, notice: 'I software inst was successfully created.' }
        format.json { render :show, status: :created, location: @i_software_inst }
      else
        format.html { render :new }
        format.json { render json: @i_software_inst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /i_software_insts/1
  # PATCH/PUT /i_software_insts/1.json
  def update
    respond_to do |format|
      if @i_software_inst.update(i_software_inst_params)
        format.html { redirect_to @i_software_inst, notice: 'I software inst was successfully updated.' }
        format.json { render :show, status: :ok, location: @i_software_inst }
      else
        format.html { render :edit }
        format.json { render json: @i_software_inst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /i_software_insts/1
  # DELETE /i_software_insts/1.json
  def destroy
    @i_software_inst.destroy
    respond_to do |format|
      format.html { redirect_to i_software_insts_url, notice: 'I software inst was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_i_software_inst
      @i_software_inst = ISoftwareInst.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def i_software_inst_params
      params.require(:i_software_inst).permit(:i_software_inst_name, :server_id, :i_software_id)
    end
end
