class StockManagementType < ActiveHash::Base
  include ActiveHash::Enum
  
  self.data = [
    {id: 0, name: '管理しない' },
    {id: 1, name: '管理する' },
  ]

  enum_accessor :stock_management_type
end