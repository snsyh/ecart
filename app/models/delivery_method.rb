class DeliveryMethod < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :indivisually_calculate_flg

  validates :delivery_method_code, presence: true, uniqueness: true, :length => {maximum: 10}
  validates :delivery_method_name, presence: true, :length => {maximum: 20}
  validates :shipping_charge_threshold_prices, presence: true, :numericality => {:only_integer => true, :less_than_or_equals_to => 10000}
  validates :indivisually_calculate_flg, presence: true, format: { with: /[0-1]/ }
  def indivisually_calculate_flg_name
    IndivisuallyCalculateFlg::NAME[self.indivisually_calculate_flg]
  end
end
