class CreateLoanHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :loan_histories do |t|
    	t.integer :loan_price

      t.timestamps
    end
  end
end
