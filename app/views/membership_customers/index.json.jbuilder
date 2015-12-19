json.array!(@membership_customers) do |membership_customer|
  json.extract! membership_customer, :id, :customer_id, :date, :sum
  json.url membership_customer_url(membership_customer, format: :json)
end
