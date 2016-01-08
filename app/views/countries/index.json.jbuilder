json.array!(@countries) do |country|
  json.extract! country, :id, :name, :position, :visible, :permalink, :brandsNumber
  json.url country_url(country, format: :json)
end
