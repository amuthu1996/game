json.array!(@events) do |event|
  json.extract! event, :id, :name, :members, :schedule
  json.url event_url(event, format: :json)
end
