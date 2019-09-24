class EnumeradosController < ApplicationController
  before_action :set_enumerado, only: [:show, :edit, :update, :destroy]

  # GET /enumerados
  # GET /enumerados.json
  def index
    @enumerados = Enumerado.all

    respond_to do |format|
      format.html

      format.pdf do
        pdf = FacturaPdf.new
        send_data pdf.render,
          filename: "export.pdf",
          type: 'application/pdf',
          disposition: 'inline'
      end

    end
  end

  # GET /enumerados/1
  # GET /enumerados/1.json
  def show
  end

  # GET /enumerados/new
  def new
    @enumerado = Enumerado.new
  end

  # GET /enumerados/1/edit
  def edit
  end

  # POST /enumerados
  # POST /enumerados.json
  def create
    @enumerado = Enumerado.new(enumerado_params)

    respond_to do |format|
      if @enumerado.save
        format.html { redirect_to @enumerado, notice: 'Enumerado was successfully created.' }
        format.json { render :show, status: :created, location: @enumerado }
      else
        format.html { render :new }
        format.json { render json: @enumerado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enumerados/1
  # PATCH/PUT /enumerados/1.json
  def update
    respond_to do |format|
      if @enumerado.update(enumerado_params)
        format.html { redirect_to @enumerado, notice: 'Enumerado was successfully updated.' }
        format.json { render :show, status: :ok, location: @enumerado }
      else
        format.html { render :edit }
        format.json { render json: @enumerado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enumerados/1
  # DELETE /enumerados/1.json
  def destroy
    @enumerado.destroy
    respond_to do |format|
      format.html { redirect_to enumerados_url, notice: 'Enumerado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enumerado
      @enumerado = Enumerado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enumerado_params
      params.require(:enumerado).permit(:radical, :codigo, :descripcion, :detalle)
    end
end
