class AvailableFlg < ActiveHashMain
  include ActiveHash::Enum
  include ActiveHash::Associations
  
  self.data = [
    {id: 0, name: '不可' },
    {id: 1, name: '可' },
  ]
  
  enum_accessor :available_flg
end