json.array!(@valuations) do |valuation|
  json.extract! valuation, :id, :description
  json.url valuation_url(valuation, format: :json)
end
