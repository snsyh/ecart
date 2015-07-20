class CreateGroupItems < ActiveRecord::Migration
  def change
    create_table :group_items do |t|
      t.string :group_item_code
      t.string :item_code

      t.timestamps null: false
    end
  end
end
