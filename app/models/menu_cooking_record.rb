class MenuCookingRecord < ApplicationRecord
  belongs_to :menu
  belongs_to :cooking_record
end
