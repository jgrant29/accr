json.array!(@partners) do |partner|
  json.extract! partner, :id, :title, :body, :url
  json.url partner_url(partner, format: :json)
end
