class BonificacionesController < ApplicationController
  before_action :set_bonificacion, only: [:show, :edit, :update, :destroy]

  # GET /bonificaciones
  # GET /bonificaciones.json
  def index
    @bonificaciones = Bonificacion.all
  end

  # GET /bonificaciones/1
  # GET /bonificaciones/1.json
  def show
  end

  # GET /bonificaciones/new
  def new
    @bonificacion = Bonificacion.new
  end

  # GET /bonificaciones/1/edit
  def edit
  end

  # POST /bonificaciones
  # POST /bonificaciones.json
  def create
    @bonificacion = Bonificacion.new(bonificacion_params)

    respond_to do |format|
      if @bonificacion.save
        format.html { redirect_to @bonificacion, notice: 'Bonificacion was successfully created.' }
        format.json { render :show, status: :created, location: @bonificacion }
      else
        format.html { render :new }
        format.json { render json: @bonificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bonificaciones/1
  # PATCH/PUT /bonificaciones/1.json
  def update
    respond_to do |format|
      if @bonificacion.update(bonificacion_params)
        format.html { redirect_to @bonificacion, notice: 'Bonificacion was successfully updated.' }
        format.json { render :show, status: :ok, location: @bonificacion }
      else
        format.html { render :edit }
        format.json { render json: @bonificacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bonificaciones/1
  # DELETE /bonificaciones/1.json
  def destroy
    @bonificacion.destroy
    respond_to do |format|
      format.html { redirect_to bonificaciones_url, notice: 'Bonificacion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bonificacion
      @bonificacion = Bonificacion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bonificacion_params
      params.require(:bonificacion).permit(:edesal_id, :linea, :porcentaje, :fdesde, :fhasta)
    end
end
