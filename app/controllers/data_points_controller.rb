class DataPointsController < ApplicationController
  before_action :set_data_point, only: [:show, :edit, :update, :destroy]

  # GET /data_points
  # GET /data_points.json
  def index
    params.permit(:after_timestamp, :limit)
    if params[:after_timestamp].nil?
      if params[:limit].nil?
        @data_points = DataPoint.all
      else
        @data_points = DataPoint.all.limit(params[:limit])
      end
    else
      if params[:limit].nil?
        @data_points = DataPoint.where(["timestamp > ?", params[:after_timestamp]])
      else
        @data_points = DataPoint.where(["timestamp > ?", params[:after_timestamp]]).limit(params[:limit])
      end
    end
  end

  # GET /data_points/1
  # GET /data_points/1.json
  def show
  end

  # GET /data_points/new
  def new
    @data_point = DataPoint.new
  end

  # GET /data_points/1/edit
  def edit
  end

  # POST /data_points
  # POST /data_points.json
  def create
    @data_point = DataPoint.new(data_point_params)

    respond_to do |format|
      if @data_point.save
        format.html { redirect_to @data_point, notice: 'Data point was successfully created.' }
        format.json { render :show, status: :created, location: @data_point }
      else
        format.html { render :new }
        format.json { render json: @data_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_points/1
  # PATCH/PUT /data_points/1.json
  def update
    respond_to do |format|
      if @data_point.update(data_point_params)
        format.html { redirect_to @data_point, notice: 'Data point was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_point }
      else
        format.html { render :edit }
        format.json { render json: @data_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_points/1
  # DELETE /data_points/1.json
  def destroy
    @data_point.destroy
    respond_to do |format|
      format.html { redirect_to data_points_url, notice: 'Data point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_point
      @data_point = DataPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_point_params
      params.require(:data_point).permit(:timestamp, :synchronized)
    end
end
