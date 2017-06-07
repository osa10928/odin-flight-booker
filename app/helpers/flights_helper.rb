module FlightsHelper

	def corresponding_flights(start, finish)
		Flight.where(:start_id => start, :finish_id => finish).to_a
	end
end
