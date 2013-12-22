json.array!(@clients) do |client|
  json.extract! client, :id, :name, :nip, :email, :desc
  json.url client_url(client, format: :json)
end
