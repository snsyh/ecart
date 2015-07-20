class DeliveryMethod < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :indivisually_calculate_flg
  def indivisually_calculate_flg_name
    IndivisuallyCalculateFlg::NAME[self.indivisually_calculate_flg]
  end
end
