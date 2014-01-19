json.array!(@payments) do |payment|
  json.extract! payment, :id, :name, :stakeholder_id, :description, :category_id, :payday, :forecast_date, :status, :cost_center_id, :account_id
  json.url payment_url(payment, format: :json)
end
