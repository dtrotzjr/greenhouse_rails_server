class SystemDataController < ApplicationController
  before_action :set_system_datum, only: [:show, :edit, :update, :destroy]

  # GET /system_data
  # GET /system_data.json
  def index
    @system_data = SystemDatum.all
  end

  # GET /system_data/1
  # GET /system_data/1.json
  def show
  end

  # GET /system_data/new
  def new
    @system_datum = SystemDatum.new
  end

  # GET /system_data/1/edit
  def edit
  end

  # POST /system_data
  # POST /system_data.json
  def create
    @system_datum = SystemDatum.new(system_datum_params)

    respond_to do |format|
      if @system_datum.save
        format.html { redirect_to @system_datum, notice: 'System datum was successfully created.' }
        format.json { render :show, status: :created, location: @system_datum }
      else
        format.html { render :new }
        format.json { render json: @system_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /system_data/1
  # PATCH/PUT /system_data/1.json
  def update
    respond_to do |format|
      if @system_datum.update(system_datum_params)
        format.html { redirect_to @system_datum, notice: 'System datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @system_datum }
      else
        format.html { render :edit }
        format.json { render json: @system_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /system_data/1
  # DELETE /system_data/1.json
  def destroy
    @system_datum.destroy
    respond_to do |format|
      format.html { redirect_to system_data_url, notice: 'System datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_system_datum
      @system_datum = SystemDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def system_datum_params
      params.require(:system_datum).permit(:soc_temperature, :data_point_id)
    end
end
