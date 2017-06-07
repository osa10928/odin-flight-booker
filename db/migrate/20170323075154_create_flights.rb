class CreateFlights < ActiveRecord::Migration[5.0]
  def change
    create_table :flights do |t|
      t.datetime :start_time
      t.time :duration

      t.timestamps
    end
    add_reference :flights, :start_id, foreign_key: { to_table: :airports}
    add_reference :flights, :finish_id, foreign_key: { to_table: :airports}
  end
end
