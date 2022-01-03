class Menu < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :cooking_records
  has_one_attached :image
end
