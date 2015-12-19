json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :family, :sexuality, :email, :father_name, :inmate, :s_s, :s_m, :job, :phon, :tell
  json.url customer_url(customer, format: :json)
end
