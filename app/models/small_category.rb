class SmallCategory < ActiveRecord::Base
  belongs_to :large_category, :foreign_key => 'large_category_code'
  belongs_to :middle_category, :foreign_key => 'middle_category_code'
  validates :large_category_code, presence: true
  validates :middle_category_code, presence: true
  validates :small_category_code, presence: true, uniqueness: true
  validates :small_category_name, presence: true
  validates :display_order, presence: true

  scope :with_parent, -> {
    includes(:middle_category)
  }

  scope :category_tree, -> {
    includes(:large_category).order(:large_category_code).order(:middle_category_code).order(:display_order)
}

end
