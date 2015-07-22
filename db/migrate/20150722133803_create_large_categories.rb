class CreateLargeCategories < ActiveRecord::Migration
  def change
    create_table :large_categories do |t|
      t.string :large_category_code
      t.string :large_category_name
      t.integer :display_order

      t.timestamps null: false
    end
  end
end
