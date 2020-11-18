class ReviewsController < ApplicationController
  before_action :set_booking, only: [:new, :create]

  def new
    @booking = Booking.find(params[:booking_id])
    @review = Review.new
  end

  def create

  end

  def destroy

  end
end
