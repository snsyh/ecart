json.array!(@middle_categories) do |middle_category|
  json.extract! middle_category, :id, :middle_category_code, :middle_category_name, :display_order
  json.url middle_category_url(middle_category, format: :json)
end
