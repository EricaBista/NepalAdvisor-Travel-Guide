json.array!(@reviews) do |review|
  json.extract! review, :id, :title, :description, :user_id, :parent_id, :item_id
  json.url review_url(review, format: :json)
end
