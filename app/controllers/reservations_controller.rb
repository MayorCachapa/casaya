class ReservationsController < ApplicationController
    before_action :set_reservation, only: [:destroy, :edit]
    before_action :set_property, only: [:new, :create]
    before_action :set_user, only: [:new, :create]
    
    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.user = @user
        @reservation.property = @property
        if @reservation.save
            redirect_to property_path(@property)
        else
            render :new, status: :unprocessable_entity
        end
    end

    def destroy
    end

    def edit
    end

    def update
    end

    private

    def reservation_params
        params.require(:reservation).permit(:starts_at, :ends_at)
    end
    
    def set_property
        @property = Property.find(params[:property_id])
    end

    def set_user
        @user = current_user
    end

    def set_reservation
        @reservation = Reservation.find(params[:id])
    end
end
