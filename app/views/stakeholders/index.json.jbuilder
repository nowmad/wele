json.array!(@stakeholders) do |stakeholder|
  json.extract! stakeholder, :name, :is_client, :is_supplier, :description
  json.url stakeholder_url(stakeholder, format: :json)
end
