class FavoritesController < ApplicationController


  def create
    @favorites = Favorite.new
    @favorites.user = current_user
    @favorites.property = Property.find(params[:property_id])
    @favorites.save
    redirect_to  dashboard_path
  end
end
