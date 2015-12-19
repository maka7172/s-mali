class CreateUsancePayments < ActiveRecord::Migration
  def change
    create_table :usance_payments do |t|
      t.float :peyment
      t.string :date
      t.integer :loan_id
      t.integer :customer_id
      t.float :payoff

      t.timestamps null: false
    end
  end
end
