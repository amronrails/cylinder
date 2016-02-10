json.array!(@specs) do |spec|
  json.extract! spec, :id, :position, :visible, :name, :key, :name_ar, :value, :info
  json.url spec_url(spec, format: :json)
end
