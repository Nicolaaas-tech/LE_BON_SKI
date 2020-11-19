class ReviewsController < ApplicationController
  before_action :set_booking, only: [:new, :create]

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create
    # @review = Review.new(review_params)
    # @booking = Booking.find(params[:booking_id])
    # @review.booking = @booking
    # @review.save
    # redirect_to material_path(@material)
  end

  def destroy

  end

  # private

  # def review_params
  #   params.require(:review).permit(:content)
  # end
end
