json.array!(@small_categories) do |small_category|
  json.extract! small_category, :id, :small_category_code, :smalle_category_name, :display_order
  json.url small_category_url(small_category, format: :json)
end
