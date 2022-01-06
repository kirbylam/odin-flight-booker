class PassengerMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def confirmation_email
    @passenger = params[:passenger]
    @url = params[:url]
    mail(to: @passenger.email, subject: 'Flight Booking Confirmation')
  end
end
