class BookingsController < ApplicationController

  def new
    @material = Material.find(params[:material_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @material = Material.find(params[:material_id])
    @booking.user = current_user
    @booking.material = @material
    @booking.save
    redirect_to material_path(@material)
  end

  def destroy
    @booking = Review.find(booking_params)
    @booking.destroy
    redirect_to booking_path(@booking.material)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
