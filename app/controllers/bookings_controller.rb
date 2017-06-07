class BookingsController < ApplicationController

	def new
		@booking = Booking.new
		@flight = Flight.find_by(id: params[:flight][:bookings])
		@passengers_number = params[:flight][:passengers].to_i
		@passengers_number.times { @booking.passengers.build }
	end

	def create
		@booking = Booking.new(booking_params)
		if @booking.save
			@booking.passengers.each do |passenger|
				PassengerMailer.booking_confirmation(passenger).deliver!
			end

			redirect_to (booking_show_path)
			flash[:success] = "Booked!"
		else
			@flight = Flight.find_by(id: params[:booking][:flight_id])
		end
	end

	def show
		@booking = Booking.last
		@flight = Flight.find_by(id: @booking.flight)

	end



	private

	  def booking_params
	  	params.require(:booking).permit(:flight_id, :passengers_attributes => [:id, :email, :name])
	  end

end
