class Item < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :group_item
  belongs_to :brand
  belongs_to :maker
  belongs_to_active_hash :sale_flg
  belongs_to_active_hash :item_type
  belongs_to_active_hash :stock_management_type
  belongs_to_active_hash :display_flg
  belongs_to_active_hash :available_flg

  def sale_flg_name
    SaleFlg::NAME[self.sale_flg]
  end

  def item_type_name
    ItemType::NAME[self.item_type]
  end

  def stock_management_type_name
    StockManagementType::NAME[self.stock_management_type]
  end

  def display_flg_name
    DisplayFlg::NAME[self.display_flg_id]
  end

  def available_flg_name
    AvailableFlg::NAME[self.available_flg_id]
  end

end
