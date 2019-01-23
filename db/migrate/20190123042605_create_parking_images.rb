class CreateParkingImages < ActiveRecord::Migration[5.2]
  def change
    create_table :parking_images do |t|
      t.text :image_id
      t.integer :parking_id

      t.timestamps
    end
  end
end
