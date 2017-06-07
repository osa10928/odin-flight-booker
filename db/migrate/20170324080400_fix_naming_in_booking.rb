class FixNamingInBooking < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bookings, :passengers_id, :passenger_id 
  	rename_column :bookings, :flights_id, :flight_id 
  end
end
