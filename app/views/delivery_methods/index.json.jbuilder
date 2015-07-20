json.array!(@delivery_methods) do |delivery_method|
  json.extract! delivery_method, :id, :delivery_method_code, :delivery_method_name, :shipping_charge_threshold_prices, :indivisually_calicurate_flg
  json.url delivery_method_url(delivery_method, format: :json)
end
