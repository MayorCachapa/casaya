class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @user_reservations = current_user.reservations
  end
end
