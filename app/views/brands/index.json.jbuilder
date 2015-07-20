json.array!(@brands) do |brand|
  json.extract! brand, :id, :brand_code, :brand_name, :capital_letter, :display_flg, :display_order
  json.url brand_url(brand, format: :json)
end
