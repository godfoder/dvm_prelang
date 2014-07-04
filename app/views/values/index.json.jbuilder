json.array!(@values) do |value|
  json.extract! value, :id, :exact_value, :standard_value, :accepted, :field_id
  json.url value_url(value, format: :json)
end
