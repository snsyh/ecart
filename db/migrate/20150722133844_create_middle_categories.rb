class CreateMiddleCategories < ActiveRecord::Migration
  def change
    create_table :middle_categories do |t|
      t.string :middle_category_code
      t.string :middle_category_name
      t.integer :display_order

      t.timestamps null: false
    end
  end
end
