json.array!(@types) do |type|
  json.extract! type, :id, :feeling
  json.url type_url(type, format: :json)
end
