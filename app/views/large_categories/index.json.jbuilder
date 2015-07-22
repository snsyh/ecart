json.array!(@large_categories) do |large_category|
  json.extract! large_category, :id, :large_category_code, :large_category_name, :display_order
  json.url large_category_url(large_category, format: :json)
end
