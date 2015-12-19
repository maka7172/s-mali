class UsanceOk < ActiveRecord::Migration
  def change
    change_column :usance_payments, :payoff, :boolean
  end
end
