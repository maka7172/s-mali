json.array!(@request_loans) do |request_loan|
  json.extract! request_loan, :id, :customer_id, :date, :loan_sum, :accepted, :loan_percent
  json.url request_loan_url(request_loan, format: :json)
end
