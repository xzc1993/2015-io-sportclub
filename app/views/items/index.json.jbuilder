json.array!(@items) do |item|
  json.extract! item, :id, :name, :quantity, :category
  json.url item_url(item, format: :json)
end
