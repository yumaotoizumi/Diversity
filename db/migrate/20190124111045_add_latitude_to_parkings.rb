class AddLatitudeToParkings < ActiveRecord::Migration[5.2]
  def change
    add_column :parkings, :latitude, :float
  end
end
