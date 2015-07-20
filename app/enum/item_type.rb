class ItemType < ActiveHashMain
  include ActiveHash::Enum
  
  self.data = [
    {id: 0, name: '新品' },
    {id: 1, name: '中古' },
    {id: 2, name: 'アウトレット' },
  ]

  enum_accessor :item_type
end