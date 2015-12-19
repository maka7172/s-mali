class CreatePayoffs < ActiveRecord::Migration
  def change
    create_table :payoffs do |t|
      t.integer :loan_id
      t.float :payment
      t.integer :usance_id
      t.float :forfeit
      t.float :sum

      t.timestamps null: false
    end
  end
end
