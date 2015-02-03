json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :Name, :Title, :Content
  json.url restaurant_url(restaurant, format: :json)
end
