class DisplayFlg < ActiveHashMain
  include ActiveHash::Enum
  include ActiveHash::Associations
  belongs_to :brand
  
  self.data = [
    {id: 0, name: '非表示' },
    {id: 1, name: '表示' },
  ]

  enum_accessor :display_flg
end