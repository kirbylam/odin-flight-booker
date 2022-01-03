class BookingsController < ApplicationController
  def new
    puts 'new'
    @booking = Booking.new
    @flight = params[:booking].to_i
    @tickets = params[:tickets].to_i
    @tickets.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      puts "saved"
    else
      puts "error"
      render :new
    end
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, :seats, passengers_attributes: [:name, :email])
    end

    def passengers_valid?
      params[:booking][:seats].to_i.times do |i|
        @passenger = Passenger.new(name: params[:booking][:passengers_attributes]["#{i}"][:name], email: params[:booking][:passengers_attributes]["#{i}"][:email])
        unless @passenger.valid?
          flash[:warning] = 'You entered an invalid entry!'
          render :new
        end
      end
    end
end
