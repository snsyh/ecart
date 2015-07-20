class SaleFlg < ActiveHashMain
  include ActiveHash::Enum
  include ActiveHash::Associations
  
  self.data = [
    {id: 0, name: '停止中' },
    {id: 1, name: '販売中' },
  ]

  enum_accessor :sale_flg
end