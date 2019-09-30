class OtrocargosController < ApplicationController
  before_action :set_otrocargo, only: [:show, :edit, :update, :destroy]

  # GET /otrocargos
  # GET /otrocargos.json
  def index
    @otrocargos = Otrocargo.all
  end

  # GET /otrocargos/1
  # GET /otrocargos/1.json
  def show
  end

  # GET /otrocargos/new
  def new
    @otrocargo = Otrocargo.new
  end

  # GET /otrocargos/1/edit
  def edit
  end

  # POST /otrocargos
  # POST /otrocargos.json
  def create
    @otrocargo = Otrocargo.new(otrocargo_params)

    respond_to do |format|
      if @otrocargo.save
        format.html { redirect_to @otrocargo, notice: 'Otrocargo was successfully created.' }
        format.json { render :show, status: :created, location: @otrocargo }
      else
        format.html { render :new }
        format.json { render json: @otrocargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /otrocargos/1
  # PATCH/PUT /otrocargos/1.json
  def update
    respond_to do |format|
      if @otrocargo.update(otrocargo_params)
        format.html { redirect_to @otrocargo, notice: 'Otrocargo was successfully updated.' }
        format.json { render :show, status: :ok, location: @otrocargo }
      else
        format.html { render :edit }
        format.json { render json: @otrocargo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /otrocargos/1
  # DELETE /otrocargos/1.json
  def destroy
    @otrocargo.destroy
    respond_to do |format|
      format.html { redirect_to otrocargos_url, notice: 'Otrocargo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otrocargo
      @otrocargo = Otrocargo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otrocargo_params
      params.require(:otrocargo).permit(:edesal_id, :concepto_id, :importe, :ffactura, :ecargo_id)
    end
end
