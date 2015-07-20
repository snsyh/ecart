class Brand < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :item
  belongs_to_active_hash :display_flg

  def display_flg_name
    DisplayFlg::NAME[self.display_flg_id]
  end
end
