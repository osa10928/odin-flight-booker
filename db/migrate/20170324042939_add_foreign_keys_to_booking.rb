class AddForeignKeysToBooking < ActiveRecord::Migration[5.0]
  def change
  	add_reference :bookings, :passengers, foreign_key: true
  	add_reference :bookings, :flights, foreign_key: true
  end
end
