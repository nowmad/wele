json.array!(@forecasts) do |forecast|
  json.extract! forecast, :id, :category_id, :year, :month, :value
  json.url forecast_url(forecast, format: :json)
end
