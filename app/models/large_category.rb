class LargeCategory < ActiveRecord::Base
  validates :large_category_code, presence: true, uniqueness: true
  validates :large_category_name, presence: true
  validates :display_order, presence: true
  self.primary_key = :large_category_code
end
