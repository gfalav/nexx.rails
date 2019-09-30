class MedidoresController < ApplicationController
  before_action :set_medidor, only: [:show, :edit, :update, :destroy]

  # GET /medidores
  # GET /medidores.json
  def index
    @medidores = Medidor.all
  end

  # GET /medidores/1
  # GET /medidores/1.json
  def show
  end

  # GET /medidores/new
  def new
    @medidor = Medidor.new
  end

  # GET /medidores/1/edit
  def edit
  end

  # POST /medidores
  # POST /medidores.json
  def create
    @medidor = Medidor.new(medidor_params)

    respond_to do |format|
      if @medidor.save
        format.html { redirect_to @medidor, notice: 'Medidor was successfully created.' }
        format.json { render :show, status: :created, location: @medidor }
      else
        format.html { render :new }
        format.json { render json: @medidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medidores/1
  # PATCH/PUT /medidores/1.json
  def update
    respond_to do |format|
      if @medidor.update(medidor_params)
        format.html { redirect_to @medidor, notice: 'Medidor was successfully updated.' }
        format.json { render :show, status: :ok, location: @medidor }
      else
        format.html { render :edit }
        format.json { render json: @medidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medidores/1
  # DELETE /medidores/1.json
  def destroy
    @medidor.destroy
    respond_to do |format|
      format.html { redirect_to medidores_url, notice: 'Medidor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medidor
      @medidor = Medidor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def medidor_params
      params.require(:medidor).permit(:suministro_id, :tmedidor_id, :nromedidor, :marca_id, :modelo, :corriente, :ttension_id, :tfase_id, :cteapa, :ffabric, :cperds)
    end
end
