json.array!(@entryitems) do |entryitem|
  json.extract! entryitem, :id, :description
  json.url entryitem_url(entryitem, format: :json)
end
