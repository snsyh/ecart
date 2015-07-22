class CreateCategories < ActiveRecord::Migration
  def self.down
    drop_table :categories
  end

  def self.up
    create_table :categories do |t|
      t.string :large_category_code
      t.string :middle_category_code
      t.string :small_category_code

      t.timestamps null: false
    end
  end
end
