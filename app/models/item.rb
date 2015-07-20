class Item < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :group_item
  belongs_to :brand, :foreign_key => 'brand_code'
  belongs_to :maker, :foreign_key => 'maker_code'
  belongs_to :delivery_method, :foreign_key => 'delivery_method_code'
  belongs_to_active_hash :sale_flg
  belongs_to_active_hash :item_type
  belongs_to_active_hash :stock_management_type
  belongs_to_active_hash :display_flg
  belongs_to_active_hash :available_flg

  scope :front_search, -> {
    includes(:brand).includes(:maker).includes(:delivery_method)
  }

  validates :item_code, presence: true, :length => {maximum: 10}
  validates :item_name, presence: true, :length => {maximum: 50}
  validates :large_category_code, presence: true, :length => {maximum: 10}
  validates :middle_category_code, presence: true, :length => {maximum: 10}
  validates :small_category_code, presence: true, :length => {maximum: 10}
  validates :sale_flg_id, presence: true, inclusion: { in: SaleFlg.array }
  validates :item_type_id, presence: true, inclusion: { in: ItemType.array }
  validates :delivery_method_code, presence: true
  validates :stock_management_type_id, presence: true, inclusion: { in: StockManagementType.array }
  validates :sale_price, presence: true, :numericality => {:only_integer => true, :less_than_or_equals_to => 99999999}
  validates :sale_stock_quantity, :numericality => {:only_integer => true, :less_than_or_equals_to => 9999}
  #validates :oneshot_order_limit
  #sale_datetime_from
  #sale_datetime_to
  #validates :reservation_price
  #validates :reservation_stock_quantity
  #validates :oneshot_reservation_limit
  #reservation_datetime_from
  #reservation_datetime_to
  #validates :discount_price
  #discount_datetime_from
  #discount_datetime_to
  #color_code
  #size_code
  #jan_code
  #brand_code
  #maker code
  validates :picking_days, :numericality => {:only_integer => true, :less_than_or_equals_to => 99}
  #release_date
  validates :targeted_date_comment, :length => {maximum: 100}
  validates :shipping_time_comment, :length => {maximum: 100}
  validates :bank_wire, presence: true, inclusion: { in: AvailableFlg.array }
  validates :cash_on_delivery, presence: true, inclusion: { in: AvailableFlg.array }
  validates :credit_card, presence: true, inclusion: { in: AvailableFlg.array }
  validates :convenience, presence: true, inclusion: { in: AvailableFlg.array }

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

end
