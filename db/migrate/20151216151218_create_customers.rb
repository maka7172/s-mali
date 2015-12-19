class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :family
      t.string :sexuality
      t.string :email
      t.string :father_name
      t.string :inmate
      t.integer :s_s
      t.integer :s_m
      t.string :job
      t.string :phon
      t.string :tell

      t.timestamps null: false
    end
  end
end
