class Customer < ActiveRecord::Base
  has_many :request_loans
  has_many :payoffs
  has_many :usance_payments
  has_many :membership_customers
end
