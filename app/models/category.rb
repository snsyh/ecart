class Category < ActiveRecord::Base
  belongs_to :large_category, :foreign_key => 'large_category_code'
end
