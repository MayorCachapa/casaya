class PropertiesController < ApplicationController
  before_action :set_property, only: :show

  def show
  end

  private

  def set_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:properties).permit(:name, :address, :description, :price_per_night, :number_of_guests, photos: [])
  end
end
