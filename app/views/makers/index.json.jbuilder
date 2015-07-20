json.array!(@makers) do |maker|
  json.extract! maker, :id, :maker_code, :maker_name, :capital_letter, :display_flg, :display_order
  json.url maker_url(maker, format: :json)
end
