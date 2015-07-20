class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :large_category_code
      t.string :middle_category_code
      t.string :small_category_code
      t.string :large_category_name
      t.string :middle_category_name
      t.string :small_category_name

      t.timestamps null: false
    end
  end
end
