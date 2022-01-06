class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end
  
  def new
    @booking = Booking.new
    @flight = params[:booking].to_i
    @tickets = params[:tickets].to_i
    @tickets.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      @booking.passengers.each do |passenger|
        PassengerMailer.with(passenger: passenger, url: @booking).confirmation_email.deliver_later
      end
      redirect_to @booking
    else
      flash[:warning] = 'Error! Invalid input! Please double check to see if you entered each field correctly!'
      params = {:booking => booking_params[:flight_id], :tickets => booking_params[:seats]}
      redirect_to new_booking_path(params)
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, :seats, passengers_attributes: [:name, :email])
    end
end
