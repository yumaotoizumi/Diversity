class CreateUseHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :use_histories do |t|
    	t.integer :use_price

      t.timestamps
    end
  end
end
