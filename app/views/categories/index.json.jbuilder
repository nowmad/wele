json.array!(@categories) do |category|
  json.extract! category, :name, :description, :is_debit, :father_id
  json.url category_url(category, format: :json)
end
