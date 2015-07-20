class CreateMakers < ActiveRecord::Migration
  def change
    create_table :makers do |t|
      t.string :maker_code
      t.string :maker_name
      t.string :capital_letter
      t.integer :display_flg_id
      t.integer :display_order

      t.timestamps null: false
    end
  end
end
