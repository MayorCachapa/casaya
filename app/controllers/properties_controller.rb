class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update]

    def index
      @properties = Property.all
      @random_beachhouse_image_url = ["https://res.cloudinary.com/dmtuadzrb/image/upload/v1685709677/casaya/property-1-main_ofivz1.jpg",
      "https://res.cloudinary.com/dmtuadzrb/image/upload/v1685709675/casaya/property-2-main_cdaegu.jpg",
      "https://res.cloudinary.com/dmtuadzrb/image/upload/v1685710163/casaya/rich-brents-kwMhr2PW9zw-unsplash_x0wbsl.jpg",
      "https://res.cloudinary.com/dmtuadzrb/image/upload/v1685710164/casaya/marvin-meyer-cjhuXRtRT0Y-unsplash_d6sh0u.jpg",
      "https://res.cloudinary.com/dmtuadzrb/image/upload/v1685710163/casaya/roberto-nickson-tleCJiDOri0-unsplash_d92pvj.jpg",
      "https://res.cloudinary.com/dmtuadzrb/image/upload/v1685710162/casaya/collov-home-design-4_jQL4JCS98-unsplash_gjl4sb.jpg"]
      if params[:query].present?
        sql_subquery = "name ILIKE :query OR description ILIKE :query"
        @properties = @properties.where(sql_subquery, query: "%#{params[:query]}%")
      end
    end

    def show
        @reservation = Reservation.new
        @user = current_user
        @markers = [{lat: @property.latitude, lng: @property.longitude}]
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
        params.require(:property).permit(:name, :address, :description, :price_per_night, :number_of_guests, :latitude, :longitude, photos: [])
    end

    def set_property
        @property = Property.find(params[:id])
    end
end
