class WildfiresController < ApplicationController
  before_action :set_wildfire, only: [:show, :edit, :update, :destroy]

  # GET /wildfires
  # GET /wildfires.json
  def index
    @wildfires = Wildfire.all
  end

  # GET /wildfires/1
  # GET /wildfires/1.json
  def show
  end

  # GET /wildfires/new
  def new
    @wildfire = Wildfire.new
  end

  # GET /wildfires/1/edit
  def edit
  end

  # POST /wildfires
  # POST /wildfires.json
  def create
    @wildfire = Wildfire.new(wildfire_params)

    respond_to do |format|
      if @wildfire.save
        format.html { redirect_to @wildfire, notice: 'Wildfire was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wildfire }
      else
        format.html { render action: 'new' }
        format.json { render json: @wildfire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wildfires/1
  # PATCH/PUT /wildfires/1.json
  def update
    respond_to do |format|
      if @wildfire.update(wildfire_params)
        format.html { redirect_to @wildfire, notice: 'Wildfire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wildfire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wildfires/1
  # DELETE /wildfires/1.json
  def destroy
    @wildfire.destroy
    respond_to do |format|
      format.html { redirect_to wildfires_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wildfire
      @wildfire = Wildfire.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wildfire_params
      params.require(:wildfire).permit(:start_date, :end_date, :size, :ongoing, :location_id)
    end
end
