json.array!(@car_specs) do |car_spec|
  json.extract! car_spec, :id, :car_id, :spec_id, :value, :value_ar, :hary
  json.url car_spec_url(car_spec, format: :json)
end
