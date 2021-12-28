class CookingRecord < ApplicationRecord
  validates :cooking_date, presence: true

  belongs_to :user
  belongs_to :menu
end
