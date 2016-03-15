json.array!(@car_specific_specs) do |car_specific_spec|
  json.extract! car_specific_spec, :id, :car_id, :specific_spec_id, :value, :value_ar, :hary
  json.url car_specific_spec_url(car_specific_spec, format: :json)
end
