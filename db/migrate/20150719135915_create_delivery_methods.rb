class CreateDeliveryMethods < ActiveRecord::Migration
  def change
    create_table :delivery_methods do |t|
      t.string :delivery_method_code
      t.string :delivery_method_name
      t.integer :shipping_charge_threshold_prices
      t.integer :indivisually_calculate_flg_id

      t.timestamps null: false
    end
  end
end
