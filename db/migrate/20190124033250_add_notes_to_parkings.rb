class AddNotesToParkings < ActiveRecord::Migration[5.2]
  def change
    add_column :parkings, :notes, :text
  end
end
