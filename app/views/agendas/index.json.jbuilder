json.array!(@agendas) do |agenda|
  json.extract! agenda, :id, :name, :song, :rapper_id, :video, :resource, :type_id
  json.url agenda_url(agenda, format: :json)
end
