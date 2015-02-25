json.array!(@advertisements) do |advertisement|
  json.extract! advertisement, :id, :text, :title, :description, :image, :started_date, :ended_date, :clicked, :position
  json.url advertisement_url(advertisement, format: :json)
end
