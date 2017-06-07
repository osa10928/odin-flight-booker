class PassengerMailer < ApplicationMailer
	default from: 'odin-flight-booker@example.com'

	def booking_confirmation(passenger)
		@passenger = passenger
		@url = 'localhost:3000'
		mail(to: @passenger.email, subject: 'Booking Confirmation')
	end
end
