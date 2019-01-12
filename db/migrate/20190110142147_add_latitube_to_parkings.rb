class AddLatitubeToParkings < ActiveRecord::Migration[5.2]
  def change
    add_column :parkings, :latitube, :float
  end
end
