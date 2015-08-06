class SmallCategory < ActiveRecord::Base
  belongs_to :middle_category, :foreign_key => 'middle_category_code'

  scope :with_parent, -> {
    includes(:middle_category)
  }
end
