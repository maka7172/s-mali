class CreateMembershipCustomers < ActiveRecord::Migration
  def change
    create_table :membership_customers do |t|
      t.string :customer_id
      t.string :date
      t.float :sum

      t.timestamps null: false
    end
  end
end
