class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :brand_code
      t.string :brand_name
      t.string :capital_letter
      t.integer :display_flg_id
      t.integer :display_order

      t.timestamps null: false
    end
  end
end
