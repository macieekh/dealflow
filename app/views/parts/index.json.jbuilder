json.array!(@parts) do |part|
  json.extract! part, :id, :code, :name
  json.url part_url(part, format: :json)
end
