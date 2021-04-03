class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :start_time, :end_time)
  end
end
