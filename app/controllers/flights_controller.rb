class FlightsController < ApplicationController

	def index
		@flight = Flight.new
		@airport_options = Airport.all.map{ |a| [ a.name, a.id ] }.uniq { |s| s.first }
		if params[:flight]
			@destination = Airport.find_by(id: params[:flight][:finish_id]).id || 2
			@start = Airport.find_by(id: params[:flight][:start_id]).id || 1 
			@datetime_options = Flight.corresponding_flight_times(params)
			@passenger_options = (1..4).map{ |n| [n, n] }
			@start_time = params[:flight][:start_time] ? params[:flight][:start_time] : 1
			@passengers = params[:flight][:passengers] ? params[:flight][:passengers] : 1
			if params[:flight][:start_time]
				@possible_flights = Flight.possible_flights(params)
			end
		end
	end



	private

	  def flight_params
	  	params.require(:flight).permit(:start_id, :finish_id, :passengers, :start_time)
	  end

	

end
