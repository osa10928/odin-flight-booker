class RemoveUnecessaryColumns < ActiveRecord::Migration[5.0]
  def change
  	remove_column :passengers, :booking_id
    remove_column :bookings, :passenger_id
  end
end
