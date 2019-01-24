class AddLongitudeToParkings < ActiveRecord::Migration[5.2]
  def change
    add_column :parkings, :longitude, :float
  end
end
