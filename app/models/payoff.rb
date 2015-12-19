class Payoff < ActiveRecord::Base
  belongs_to :customer
  has_one :usance_payment
  belongs_to :request_loan
  
end
