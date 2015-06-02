class ISoftwaresController < ApplicationController
  before_action :set_i_software, only: [:show, :edit, :update, :destroy]

  # GET /i_softwares
  # GET /i_softwares.json
  def index
    @i_softwares = ISoftware.all
  end

  # GET /i_softwares/1
  # GET /i_softwares/1.json
  def show
  end

  # GET /i_softwares/new
  def new
    @i_software = ISoftware.new
  end

  # GET /i_softwares/1/edit
  def edit
  end

  # POST /i_softwares
  # POST /i_softwares.json
  def create
    @i_software = ISoftware.new(i_software_params)

    respond_to do |format|
      if @i_software.save
        format.html { redirect_to @i_software, notice: 'I software was successfully created.' }
        format.json { render :show, status: :created, location: @i_software }
      else
        format.html { render :new }
        format.json { render json: @i_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /i_softwares/1
  # PATCH/PUT /i_softwares/1.json
  def update
    respond_to do |format|
      if @i_software.update(i_software_params)
        format.html { redirect_to @i_software, notice: 'I software was successfully updated.' }
        format.json { render :show, status: :ok, location: @i_software }
      else
        format.html { render :edit }
        format.json { render json: @i_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /i_softwares/1
  # DELETE /i_softwares/1.json
  def destroy
    @i_software.destroy
    respond_to do |format|
      format.html { redirect_to i_softwares_url, notice: 'I software was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_i_software
      @i_software = ISoftware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def i_software_params
      params.require(:i_software).permit(:i_software_name, :version)
    end
end
