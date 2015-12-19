class RequestLoan < ActiveRecord::Base
  belongs_to :customer
  has_many :payoffs
  has_many :usance_payments

  end
