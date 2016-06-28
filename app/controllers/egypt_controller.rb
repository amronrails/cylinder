class EgyptController < ApplicationController
  layout 'egypt'
  def index
    @brands = Brand.sorted
  end

  # def companies
  #   @company = Brand.where(:permalink => params[:permalink], :visible => true).first
  #   if @company.nil?
  #     redirect_to(:action => 'index')
  #   end
  # end

  def vehicles
    @vehicle = Model.where(:permalink => params[:permalink], :visible => true).first
    if @vehicle.nil?
      redirect_to(:action => 'index')
    end
  end

  def motors
    @car = Car.where(:permalink => params[:permalink], :visible => true).first
    if @car.nil?
      redirect_to(:action => 'index')
    end
    unless @car.nil?
    @model = Model.find(@car.model_id)
    @brand = Brand.find(@model.brand_id)
    end
  end
  def dealers
    
  end

  def engez
    @companies = Brand.sorted
    @models = Model.sorted
    @car = Brand.new
  end

  def newcars

    @company = Brand.where(:permalink => params[:permalink], :visible => true).first
    if @company.nil?
      @brands = Brand.visible.sorted
      @compare = Car.new
      respond_to do |format|
       format.html # new.html.erb
       format.js
        end

     else
      @models = @company.models.visible.sorted
    end
    
  end

  def compare
    if params[:permalink1]
      @car1=Car.where(:permalink => params[:permalink1]).first
    end
    if params[:permalink2]
      @car2=Car.where(:permalink => params[:permalink2]).first
    end
    if params[:permalink3]
      @car3=Car.where(:permalink => params[:permalink3]).first
    end
    if params[:permalink4]
      @car4=Car.where(:permalink => params[:permalink4]).first
    end
  end

end
