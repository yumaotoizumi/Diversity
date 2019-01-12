class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
    	t.datetime :start_day
    	t.datetime :end_day

      t.timestamps
    end
  end
end
