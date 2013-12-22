json.array!(@deals) do |deal|
  json.extract! deal, :id, :client, :headline, :value, :description
  json.url deal_url(deal, format: :json)
end
