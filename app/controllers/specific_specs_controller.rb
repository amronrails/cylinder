class SpecificSpecsController < ApplicationController
  before_action :set_specific_spec, only: [:show, :edit, :update, :destroy]
  before_action :confirm_login

  # GET /specific_specs
  # GET /specific_specs.json
  def index
    @specific_specs = SpecificSpec.all
  end

  # GET /specific_specs/1
  # GET /specific_specs/1.json
  def show
  end

  # GET /specific_specs/new
  def new
    @specific_spec = SpecificSpec.new
  end

  # GET /specific_specs/1/edit
  def edit
  end

  # POST /specific_specs
  # POST /specific_specs.json
  def create
    @specific_spec = SpecificSpec.new(specific_spec_params)

    respond_to do |format|
      if @specific_spec.save
        format.html { redirect_to @specific_spec, notice: 'Specific spec was successfully created.' }
        format.json { render :show, status: :created, location: @specific_spec }
      else
        format.html { render :new }
        format.json { render json: @specific_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /specific_specs/1
  # PATCH/PUT /specific_specs/1.json
  def update
    respond_to do |format|
      if @specific_spec.update(specific_spec_params)
        format.html { redirect_to @specific_spec, notice: 'Specific spec was successfully updated.' }
        format.json { render :show, status: :ok, location: @specific_spec }
      else
        format.html { render :edit }
        format.json { render json: @specific_spec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /specific_specs/1
  # DELETE /specific_specs/1.json
  def destroy
    @specific_spec.destroy
    respond_to do |format|
      format.html { redirect_to specific_specs_url, notice: 'Specific spec was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_specific_spec
      @specific_spec = SpecificSpec.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def specific_spec_params
      params.require(:specific_spec).permit(:position, :key, :visible, :info, :extra)
    end
end
