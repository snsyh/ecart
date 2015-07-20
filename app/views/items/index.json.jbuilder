json.array!(@items) do |item|
  json.extract! item, :id, :item_code, :item_name, :large_category_code, :middle_category_code, :small_category_code, :sale_flg, :item_status, :delivery_method_code, :stock_management_type, :sale_price, :sale_stock_quantity, :oneshot_order_limit, :sale_datetime, :_from, :sale_datetime, :_to, :reservation_price, :reservation_stock_quantity, :oneshot_reservation_limit, :reservation_datetime, :_from, :reservation_datetime, :_to, :discount_price, :discount_datetime, :_from, :discount_datetime, :_to, :color_code, :size_code, :jan_code, :brand_code, :maker_code, :picking_days, :release_date, :targeted_date_comment, :shipping_time_comment, :bank_wire, :cash_on_delivery, :credit_card, :convenience, :average_review_score
  json.url item_url(item, format: :json)
end
