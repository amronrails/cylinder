json.array!(@specific_specs) do |specific_spec|
  json.extract! specific_spec, :id, :position, :key, :visible, :info, :extra
  json.url specific_spec_url(specific_spec, format: :json)
end
