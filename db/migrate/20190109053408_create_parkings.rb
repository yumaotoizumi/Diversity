class CreateParkings < ActiveRecord::Migration[5.2]
  def change
    create_table :parkings do |t|
    	t.integer :price
    	t.integer :stock
    	t.string :car_model
    	t.string :type
    	t.string :address
    	t.string :postal_code
    	t.text :parking_image_id

      t.timestamps
    end
  end
end