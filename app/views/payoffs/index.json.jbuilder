json.array!(@payoffs) do |payoff|
  json.extract! payoff, :id, :loan_id, :payment, :usance_id, :forfeit, :sum
  json.url payoff_url(payoff, format: :json)
end
