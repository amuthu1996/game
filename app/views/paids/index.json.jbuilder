json.array!(@paids) do |paid|
  json.extract! paid, :id, :pay
  json.url paid_url(paid, format: :json)
end
