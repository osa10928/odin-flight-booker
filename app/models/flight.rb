class Flight < ApplicationRecord
	belongs_to :start, :class_name => "Airport"
	belongs_to :finish, :class_name => "Airport"
	has_many :bookings
	has_many :passenger_bookings, :through => :bookings
	has_many :passengers, :through => :passenger_bookings

	def self.corresponding_flight_times(params)
		@flight = Flight.all
		@flight = Flight.where(:start_id => (params[:flight][:start_id]), :finish_id => (params[:flight][:finish_id])).to_a
		@flight.map { |flight| [ flight.start_time.strftime("%d/%m/%Y"), flight.start_time.strftime("%d/%m/%Y") ] }
	end

	def self.possible_flights(params)
		Flight.where(:start_id => (params[:flight][:start_id]), :finish_id => (params[:flight][:finish_id]), :start_time => (params[:flight][:start_time].to_date.midnight..params[:flight][:start_time].to_date.end_of_day))
	end

	
end
