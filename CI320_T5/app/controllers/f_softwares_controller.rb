class FSoftwaresController < ApplicationController
  before_action :set_f_software, only: [:show, :edit, :update, :destroy]
  before_filter :get_user
  before_filter :admin_authorization, :except => [:index, :show]

  # GET /f_softwares
  # GET /f_softwares.json
  def index
    @f_softwares = FSoftware.all
  end

  # GET /f_softwares/1
  # GET /f_softwares/1.json
  def show
  end

  # GET /f_softwares/new
  def new
    @f_software = FSoftware.new
  end

  # GET /f_softwares/1/edit
  def edit
  end

  # POST /f_softwares
  # POST /f_softwares.json
  def create
    @f_software = FSoftware.new(f_software_params)

    respond_to do |format|
      if @f_software.save
        format.html { redirect_to @f_software, notice: 'F software was successfully created.' }
        format.json { render :show, status: :created, location: @f_software }
      else
        format.html { render :new }
        format.json { render json: @f_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /f_softwares/1
  # PATCH/PUT /f_softwares/1.json
  def update
    respond_to do |format|
      if @f_software.update(f_software_params)
        format.html { redirect_to @f_software, notice: 'F software was successfully updated.' }
        format.json { render :show, status: :ok, location: @f_software }
      else
        format.html { render :edit }
        format.json { render json: @f_software.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /f_softwares/1
  # DELETE /f_softwares/1.json
  def destroy
    @f_software.destroy
    respond_to do |format|
      format.html { redirect_to f_softwares_url, notice: 'F software was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_f_software
      @f_software = FSoftware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def f_software_params
      params.require(:f_software).permit(:f_software_name, :cpu, :memory, :storage, :version)
    end

    def get_user
      @user = current_user
    end

    def admin_authorization
      role = Role.find(current_user.role_id)
      if (role.name != 'Admin')
        redirect_to '/softwares/', :alert => "Access denied."
      end
    end
end
