class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update]
  
    def index
      @properties = Property.all
    end
  
    def show
        @reservation = Reservation.new
        @user = current_user
    end

    def new
        @property = Property.new
    end

    def create
        @property = Property.new(property_params)
        @property.user = current_user
        
        if @property.save
            redirect_to property_path(@property)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
    end

    def update
        if @property.update(property_params)
            redirect_to property_path(@property)
        else
            render :edit, status: :unprocessable_entity
        end    
    end

    private
    def property_params
        params.require(:property).permit(:name, :address, :description, :price_per_night, :number_of_guests)        
    end

    def set_property
        @property = Property.find(params[:id])
    end
end
