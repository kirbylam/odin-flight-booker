class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flight = params[:flight]
    @tickets = params[:tickets]
  end

  def create
    @booking = Booking.new(booking_params)
  end

  private
    def booking_params
      params.require(:booking).permit(:name, :email)
    end
end
