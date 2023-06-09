class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update]

    def index
      @properties = Property.all
      @queries = ['beach house', 'home on beach', 'surf house', 'pool house', 'vacation house', 'cabin', 'cabin sea', 'surf villa', 'surf casa', 'surf huis', 'surf van']

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
