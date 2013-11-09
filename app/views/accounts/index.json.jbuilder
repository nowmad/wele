json.array!(@accounts) do |account|
  json.extract! account, :name, :bank_number, :bank_name, :agency, :account_number
  json.url account_url(account, format: :json)
end
