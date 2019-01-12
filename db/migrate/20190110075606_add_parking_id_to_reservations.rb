class AddParkingIdToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :parking_id, :integer
  end
end
