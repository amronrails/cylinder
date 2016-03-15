class CarSpecificSpecsController < ApplicationController
  before_action :confirm_login
  before_action :set_car_specific_spec, only: [:show, :edit, :update, :destroy]

  # GET /car_specific_specs
  # GET /car_specific_specs.json
  def index
    @car_specific_specs = CarSpecificSpec.all
  end

  # GET /car_specific_specs/1
  # GET /car_specific_specs/1.json
  def show
  end

  # GET /car_specific_specs/new
  def new
    @car_specific_spec = CarSpecificSpec.new
  end

  # GET /car_specific_specs/1/edit
  def edit
  end

  # POST /car_specific_specs
  # POST /car_specific_specs.json
  def create
    @car_specific_spec = CarSpecificSpec.new(car_specific_spec_params)

    respond_to do |format|
      if @car_specific_spec.save
        format.html { redirect_to @car_specific_spec, notice: 'Car specific spec was successfully created.' }
        format.json { render :show, status: :created, location: @car_specific_spec }
      else
        format.html { render :new }
        format.json { render json: @car_specific_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_specific_specs/1
  # PATCH/PUT /car_specific_specs/1.json
  def update
    respond_to do |format|
      if @car_specific_spec.update(car_specific_spec_params)
        format.html { redirect_to @car_specific_spec, notice: 'Car specific spec was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_specific_spec }
      else
        format.html { render :edit }
        format.json { render json: @car_specific_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_specific_specs/1
  # DELETE /car_specific_specs/1.json
  def destroy
    @car_specific_spec.destroy
    respond_to do |format|
      format.html { redirect_to car_specific_specs_url, notice: 'Car specific spec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_specific_spec
      @car_specific_spec = CarSpecificSpec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_specific_spec_params
      params.require(:car_specific_spec).permit(:car_id, :specific_spec_id, :value, :value_ar, :hary)
    end
end
