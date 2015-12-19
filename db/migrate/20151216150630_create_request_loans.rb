class CreateRequestLoans < ActiveRecord::Migration
  def change
    create_table :request_loans do |t|
      t.integer :customer_id
      t.string :date
      t.integer :loan_sum
      t.boolean :accepted
      t.integer :loan_percent

      t.timestamps null: false
    end
  end
end
