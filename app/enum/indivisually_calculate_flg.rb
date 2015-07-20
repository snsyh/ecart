class IndivisuallyCalculateFlg < ActiveHash::Base
  include ActiveHash::Enum
  include ActiveHash::Associations
  belongs_to :delivery_method
  
  self.data = [
    {id: 0, name: '一括計算する' },
    {id: 1, name: '個別に計算する' },
  ]

  enum_accessor :indivisually_calculate_flg
end
