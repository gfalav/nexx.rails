class CallesController < ApplicationController
  before_action :set_calle, only: [:show, :edit, :update, :destroy]

  # GET /calles
  # GET /calles.json
  def index
    @calles = Calle.all.sort_by{ |calle| -calle.fullcalle }
  end

  # GET /calles/1
  # GET /calles/1.json
  def show

  end

  # GET /calles/new
  def new
    @calle = Calle.new
    @calle.barrio_id = params[:barrio_id]
  end

  # GET /calles/1/edit
  def edit
  end

  # POST /calles
  # POST /calles.json
  def create
    @calle = Calle.new(calle_params)
    @barrio = Barrio.find(@calle.barrio_id)

    respond_to do |format|
      if @calle.save
        format.html { redirect_to @barrio, notice: 'Calle was successfully created.' }
        format.json { render :show, status: :created, location: @calle }
      else
        format.html { render :new }
        format.json { render json: @calle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calles/1
  # PATCH/PUT /calles/1.json
  def update
    respond_to do |format|
      if @calle.update(calle_params)
        format.html { redirect_to @calle, notice: 'Calle was successfully updated.' }
        format.json { render :show, status: :ok, location: @calle }
      else
        format.html { render :edit }
        format.json { render json: @calle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calles/1
  # DELETE /calles/1.json
  def destroy
    @calle.destroy
    respond_to do |format|
      format.html { redirect_to calles_url, notice: 'Calle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calle
      @calle = Calle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calle_params
      params[:calle][:nombre] = params[:calle][:nombre].upcase
      params.require(:calle).permit(:barrio_id, :nombre)
    end
end
