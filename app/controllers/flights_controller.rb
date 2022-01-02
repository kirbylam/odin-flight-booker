class FlightsController < ApplicationController
  def index
    @availible_flights = nil
    @airport_options = Airport.all.map { |airport| [ airport.identifier, airport.id ] }
    @date_options = Flight.order('start_datetime ASC').all.map { |flight| [ flight.start_datetime.strftime("%m/%d/%Y") ] }
    
    if searched?
      @date = Date.strptime(params[:date], "%m/%d/%Y")
      @availible_flights = Flight.where(departure_airport: params[:departure], arrival_airport: params[:arrival], start_datetime: @date.beginning_of_day..@date.end_of_day)
      @tickets = params[:passengers]
    end
  end

  private
    def searched?
      params[:departure] && params[:arrival] && params[:passengers] && params[:date]
    end
end
