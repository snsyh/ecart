class MiddleCategory < ActiveRecord::Base
  belongs_to :large_category, :foreign_key => 'large_category_code'
  validates :large_category_code, presence: true
  validates :middle_category_code, presence: true, uniqueness: true
  validates :middle_category_name, presence: true
  validates :display_order, presence: true

  scope :with_parent, -> {
    includes(:large_category)
  }
  scope :belongs_to_select_category, ->(category) {
    includes(:large_category).where("large_category_code = ? or id = ?", category[:large_category_code], category[:large_category_code])
  }

  scope :category_tree, -> {
    includes(:large_category).order(:large_category_code).order(:display_order)
}

end
