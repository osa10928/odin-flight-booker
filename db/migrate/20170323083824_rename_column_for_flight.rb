class RenameColumnForFlight < ActiveRecord::Migration[5.0]
  def change
  	rename_column :flights, :start_id_id, :start_id
  	rename_column :flights, :finish_id_id, :finish_id
  end
end
