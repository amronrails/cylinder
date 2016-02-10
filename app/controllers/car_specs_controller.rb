class CarSpecsController < ApplicationController
  layout "twitter"
  before_action :confirm_login

  before_action :set_car_spec, only: [:show, :edit, :update, :destroy]
  before_action :set_car
  before_action :set_spec
  # GET /car_specs
  # GET /car_specs.json
  def index
    @car_specs = CarSpec.all
  end

  # GET /car_specs/1
  # GET /car_specs/1.json
  def show
  end

  # GET /car_specs/new
  def new
    @car_spec = CarSpec.new
    @cars = Car.sorted
    @specs = Spec.all
  end

  # GET /car_specs/1/edit
  def edit
  @cars = Car.sorted
  @specs = Spec.all
  end

  # POST /car_specs
  # POST /car_specs.json
  def create
    @car_spec = CarSpec.new(car_spec_params)

    respond_to do |format|
      if @car_spec.save
        format.html { redirect_to @car_spec, notice: 'Car spec was successfully created.' }
        format.json { render :show, status: :created, location: @car_spec }
      else
        format.html { render :new }
        format.json { render json: @car_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_specs/1
  # PATCH/PUT /car_specs/1.json
  def update
    respond_to do |format|
      if @car_spec.update(car_spec_params)
        format.html { redirect_to @car_spec, notice: 'Car spec was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_spec }
      else
        format.html { render :edit }
        format.json { render json: @car_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_specs/1
  # DELETE /car_specs/1.json
  def destroy
    @car_spec.destroy
    respond_to do |format|
      format.html { redirect_to car_specs_url, notice: 'Car spec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_spec
      @car_spec = CarSpec.find(params[:id])
    end

    def set_car
      if params[:car_id]
        @car = Car.find(params[:car_id])
        @cars = Car.sorted
      end
    end

    def set_spec
      if params[:spec_id]
        @agent = Spec.find(params[:spec_id])
        @agents = Spec.sorted
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_spec_params
      params.require(:car_spec).permit(:car_id, :spec_id, :value, :value_ar, :hary)
    end
end
