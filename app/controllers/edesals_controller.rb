class EdesalsController < ApplicationController
  before_action :set_edesal, only: [:show, :edit, :update, :destroy]

  # GET /edesals
  # GET /edesals.json
  def index
    @edesals = Edesal.all
  end

  # GET /edesals/1
  # GET /edesals/1.json
  def show
  end

  # GET /edesals/new
  def new
    @edesal = Edesal.new
  end

  # GET /edesals/1/edit
  def edit
  end

  # POST /edesals
  # POST /edesals.json
  def create
    @edesal = Edesal.new(edesal_params)

    respond_to do |format|
      if @edesal.save
        format.html { redirect_to @edesal, notice: 'Edesal was successfully created.' }
        format.json { render :show, status: :created, location: @edesal }
      else
        format.html { render :new }
        format.json { render json: @edesal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edesals/1
  # PATCH/PUT /edesals/1.json
  def update
    respond_to do |format|
      if @edesal.update(edesal_params)
        format.html { redirect_to @edesal, notice: 'Edesal was successfully updated.' }
        format.json { render :show, status: :ok, location: @edesal }
      else
        format.html { render :edit }
        format.json { render json: @edesal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edesals/1
  # DELETE /edesals/1.json
  def destroy
    @edesal.destroy
    respond_to do |format|
      format.html { redirect_to edesals_url, notice: 'Edesal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edesal
      @edesal = Edesal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edesal_params
      params.require(:edesal).permit(:contrato_id, :tarifa_id, :potvigente, :fpotvigente, :potoriginal, :fpotoriginal, :fdetectbadcosfi, :csmofijo, :eservicio)
    end
end
