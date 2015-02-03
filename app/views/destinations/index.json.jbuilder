json.array!(@destinations) do |destination|
  json.extract! destination, :id, :Name, :Title, :Content
  json.url destination_url(destination, format: :json)
end
