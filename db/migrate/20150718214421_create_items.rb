class CreateItems < ActiveRecord::Migration
  def self.down
    drop_table :items
  end
  
  def self.up
    create_table :items do |t|
      t.string :item_code
      t.string :item_name
      t.string :small_category_code
      t.integer :sale_flg_id
      t.integer :item_type_id
      t.string :delivery_method_code
      t.integer :stock_management_type_id
      t.integer :sale_price
      t.integer :sale_stock_quantity
      t.integer :oneshot_order_limit
      t.datetime :sale_datetime_from
      t.datetime :sale_datetime_to
      t.integer :reservation_price
      t.integer :reservation_stock_quantity
      t.integer :oneshot_reservation_limit
      t.datetime :reservation_datetime_from
      t.datetime :reservation_datetime_to
      t.integer :discount_price
      t.datetime :discount_datetime_from
      t.datetime :discount_datetime_to
      t.string :color_code
      t.string :size_code
      t.string :jan_code
      t.string :brand_code
      t.string :maker_code
      t.integer :picking_days
      t.date :release_date
      t.string :targeted_date_comment
      t.string :shipping_time_comment
      t.integer :bank_wire
      t.integer :cash_on_delivery
      t.integer :credit_card
      t.integer :convenience
      t.integer :average_review_score

      t.timestamps null: false
    end
  end
end
