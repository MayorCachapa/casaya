class ReservationsController < ApplicationController
    before_action :set_reservation, only: [:show, :destroy, :edit]
    before_action :set_property, only: [:show, :new, :create]
    before_action :set_user, only: [:show, :new, :create]

    def index
      @reservation = Reservation.all
    end

    def show
        @user = @reservation.user
        @review = Review.new
    end

    def new
        @reservation = Reservation.new
    end

    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.user = @user
        @reservation.property = @property
        @review = Review.new(reservation: @reservation)
        if @reservation.save
            redirect_to reservation_path(@reservation)
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
        if @reservation
            @property = @reservation.property
        else
            @property = Property.find(params[:property_id])
        end
    end

    def set_user
        @user = current_user
    end

    def set_reservation
        @reservation = Reservation.find(params[:id])
    end
end
