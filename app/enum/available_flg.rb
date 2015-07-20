class AvailableFlg < ActiveHash::Base
  include ActiveHash::Enum
  include ActiveHash::Associations
  
  self.data = [
    {id: 0, name: '不可' },
    {id: 1, name: '可' },
  ]

  enum_accessor :available_flg
end