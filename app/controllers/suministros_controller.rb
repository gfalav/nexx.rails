class SuministrosController < ApplicationController
  before_action :set_suministro, only: [:show, :edit, :update, :destroy]

  # GET /suministros
  # GET /suministros.json
  def index
    @suministros = Suministro.all
  end

  # GET /suministros/1
  # GET /suministros/1.json
  def show
  end

  # GET /suministros/new
  def new
    @suministro = Suministro.new
  end

  # GET /suministros/1/edit
  def edit
  end

  # POST /suministros
  # POST /suministros.json
  def create
    @suministro = Suministro.new(suministro_params)

    respond_to do |format|
      if @suministro.save
        format.html { redirect_to @suministro, notice: 'Suministro was successfully created.' }
        format.json { render :show, status: :created, location: @suministro }
      else
        format.html { render :new }
        format.json { render json: @suministro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suministros/1
  # PATCH/PUT /suministros/1.json
  def update
    respond_to do |format|
      if @suministro.update(suministro_params)
        format.html { redirect_to @suministro, notice: 'Suministro was successfully updated.' }
        format.json { render :show, status: :ok, location: @suministro }
      else
        format.html { render :edit }
        format.json { render json: @suministro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suministros/1
  # DELETE /suministros/1.json
  def destroy
    @suministro.destroy
    respond_to do |format|
      format.html { redirect_to suministros_url, notice: 'Suministro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suministro
      @suministro = Suministro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suministro_params
      params.require(:suministro).permit(:nombre, :edesal_id, :tmedicion_id, :tconexion_id, :ttension_id, :tfase_id, :direccion_id)
    end
end
