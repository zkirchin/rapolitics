json.array!(@selections) do |selection|
  json.extract! selection, :id, :rapper_id, :type_id
  json.url selection_url(selection, format: :json)
end
