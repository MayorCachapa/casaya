class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user_reservations = current_user.reservations
    @favorites = current_user.favorites
  end

end
