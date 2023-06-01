class ReviewsController < ApplicationController
    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        @review.user = current_user

        @reservation = Reservation.find(params[:reservation_id])
        @review.reservation = @reservation
        if @review.save
            redirect_to reservation_path(@reservation), notice: "Review created successfully."
        else
            @property = @reservation.property
            render 'properties/show', status: :unprocessable_entity
        end
    end

    private
    def review_params
        params.require(:review).permit(:content, :rating, :reservation_id)
    end
end
