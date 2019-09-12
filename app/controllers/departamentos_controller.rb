class DepartamentosController < ApplicationController
  before_action :set_departamento, only: [:show, :edit, :update, :destroy]

  # GET /departamentos
  # GET /departamentos.json
  def index
    @departamentos = Departamento.all
  end

  # GET /departamentos/1
  # GET /departamentos/1.json
  def show
    @municipios = @departamento.municipios
  end

  # GET /departamentos/new
  def new
    @departamento = Departamento.new
    @departamento.provincia_id = params[:provincia_id]
  end

  # GET /departamentos/1/edit
  def edit
  end

  # POST /departamentos
  # POST /departamentos.json
  def create
    @departamento = Departamento.new(departamento_params)
    @provincia = Provincia.find(@departamento.provincia_id)

    respond_to do |format|
      if @departamento.save
        format.html { redirect_to @provincia, notice: 'Departamento was successfully created.' }
        format.json { render :show, status: :created, location: @departamento }
      else
        format.html { render :new }
        format.json { render json: @departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departamentos/1
  # PATCH/PUT /departamentos/1.json
  def update
    respond_to do |format|
      if @departamento.update(departamento_params)
        format.html { redirect_to @departamento, notice: 'Departamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @departamento }
      else
        format.html { render :edit }
        format.json { render json: @departamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departamentos/1
  # DELETE /departamentos/1.json
  def destroy
    @departamento.destroy
    respond_to do |format|
      format.html { redirect_to departamentos_url, notice: 'Departamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departamento
      @departamento = Departamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def departamento_params
      params[:departamento][:nombre] = params[:departamento][:nombre].upcase
      params.require(:departamento).permit(:provincia_id, :nombre)
    end
end
