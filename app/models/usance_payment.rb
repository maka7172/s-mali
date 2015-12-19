class UsancePayment < ActiveRecord::Base
  belongs_to :customer
  belongs_to :request_loan
end
