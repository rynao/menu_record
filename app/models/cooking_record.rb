class CookingRecord < ApplicationRecord
  validates :cooking_date, presence: true

  belongs_to :user
  has_many :menus, through: :menu_cooking_records
end
