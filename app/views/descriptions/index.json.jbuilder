json.array!(@descriptions) do |description|
  json.extract! description, :id, :Title, :Content, :Order, :item_id
  json.url description_url(description, format: :json)
end
