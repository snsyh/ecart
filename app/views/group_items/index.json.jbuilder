json.array!(@group_items) do |group_item|
  json.extract! group_item, :id, :group_item_code, :item_code
  json.url group_item_url(group_item, format: :json)
end
