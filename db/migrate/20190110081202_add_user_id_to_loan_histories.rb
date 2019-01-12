class AddUserIdToLoanHistories < ActiveRecord::Migration[5.2]
  def change
    add_column :loan_histories, :user_id, :integer
  end
end
