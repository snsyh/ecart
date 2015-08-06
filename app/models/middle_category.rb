class MiddleCategory < ActiveRecord::Base
  belongs_to :large_category, :foreign_key => 'large_category_code'
  
  scope :with_parent, -> {
    includes(:large_category)
  }
  scope :belongs_to_select_category, ->(category) {
    where("large_category_code = ?", category[:large_category_code])
  }
end
