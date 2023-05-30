class PropertiesController < ApplicationController
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

    private
    def property_params
        params.require(:property).permit(:name, :address, :description, :price_per_night, :number_of_guests)        
    end
end
