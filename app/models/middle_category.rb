class MiddleCategory < ActiveRecord::Base
  belongs_to :large_category, :foreign_key => 'large_category_code'
  
  scope :with_parent, -> {
    includes(:large_category)
  }
end
