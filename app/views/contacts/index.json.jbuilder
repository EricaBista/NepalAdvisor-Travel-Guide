json.array!(@contacts) do |contact|
  json.extract! contact, :id, :Slug, :Title, :Content, :Order, :Home_page
  json.url contact_url(contact, format: :json)
end
