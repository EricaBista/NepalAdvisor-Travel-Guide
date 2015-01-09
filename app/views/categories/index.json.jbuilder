json.array!(@categories) do |category|
  json.extract! category, :id, :Name, :Description, :Order
  json.url category_url(category, format: :json)
end
