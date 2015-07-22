class CreateSmallCategories < ActiveRecord::Migration
  def self.down
    drop_table :small_categories
  end

  def self.up
    create_table :small_categories do |t|
      t.string :small_category_code
      t.string :small_category_name
      t.integer :display_order

      t.timestamps null: false
    end
  end
end
