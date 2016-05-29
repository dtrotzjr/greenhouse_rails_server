class ImageDataController < ApplicationController
  before_action :set_image_datum, only: [:show, :edit, :update, :destroy]

  # GET /image_data
  # GET /image_data.json
  def index
    @image_data = ImageDatum.all
  end

  # GET /image_data/1
  # GET /image_data/1.json
  def show
  end

  # GET /image_data/new
  def new
    @image_datum = ImageDatum.new
  end

  # GET /image_data/1/edit
  def edit
  end

  # POST /image_data
  # POST /image_data.json
  def create
    @image_datum = ImageDatum.new(image_datum_params)

    respond_to do |format|
      if @image_datum.save
        format.html { redirect_to @image_datum, notice: 'Image datum was successfully created.' }
        format.json { render :show, status: :created, location: @image_datum }
      else
        format.html { render :new }
        format.json { render json: @image_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /image_data/1
  # PATCH/PUT /image_data/1.json
  def update
    respond_to do |format|
      if @image_datum.update(image_datum_params)
        format.html { redirect_to @image_datum, notice: 'Image datum was successfully updated.' }
        format.json { render :show, status: :ok, location: @image_datum }
      else
        format.html { render :edit }
        format.json { render json: @image_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /image_data/1
  # DELETE /image_data/1.json
  def destroy
    @image_datum.destroy
    respond_to do |format|
      format.html { redirect_to image_data_url, notice: 'Image datum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image_datum
      @image_datum = ImageDatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_datum_params
      params.require(:image_datum).permit(:filename, :data_point_id)
    end
end
