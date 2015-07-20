class Brand < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  has_many :items
  belongs_to_active_hash :display_flg

  validates :brand_code, presence: true, :length => {maximum: 10}
  validates :brand_name, presence: true, :length => {maximum: 20}
  validates_with CapitalLetterValidator
  validates :display_flg_id, presence: true, inclusion: { in: DisplayFlg.array }
  validates :display_order, numericality: true
  def display_flg_name
    DisplayFlg::NAME[self.display_flg_id]
  end
end
