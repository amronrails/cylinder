class CarImagesController < ApplicationController
  layout "twitter"
  before_action :confirm_login
  before_action :set_car_image, only: [:show, :edit, :update, :destroy]

  # GET /car_images
  # GET /car_images.json
  def index
    @car_images = CarImage.all
  end

  # GET /car_images/1
  # GET /car_images/1.json
  def show
  end

  # GET /car_images/new
  def new
    @car_image = CarImage.new
    @brands = Brand.sorted
  end

  # GET /car_images/1/edit
  def edit
    @brands = Brand.sorted
  end

  # POST /car_images
  # POST /car_images.json
  def create
    @car_image = CarImage.new(car_image_params)

    respond_to do |format|
      if @car_image.save
        format.html { redirect_to @car_image, notice: 'Car image was successfully created.' }
        format.json { render :show, status: :created, location: @car_image }
      else
        format.html { render :new }
        format.json { render json: @car_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_images/1
  # PATCH/PUT /car_images/1.json
  def update
    respond_to do |format|
      if @car_image.update(car_image_params)
        format.html { redirect_to @car_image, notice: 'Car image was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_image }
      else
        format.html { render :edit }
        format.json { render json: @car_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_images/1
  # DELETE /car_images/1.json
  def destroy
    @car_image.destroy
    respond_to do |format|
      format.html { redirect_to car_images_url, notice: 'Car image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_image
      @car_image = CarImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_image_params
      params.require(:car_image).permit(:model_id, :avatar)

    end
end
