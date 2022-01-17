class Menu < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :cooking_records, dependent: :destroy
  has_one_attached :image

  def self.search(search,user_id)
    if search != ''
    search = "%#{search}%"
      Menu.find_by_sql(["
        SELECT title, MAX(start_time), m.id
        FROM menus m
        LEFT OUTER JOIN cooking_records c ON m.id = c.menu_id
        JOIN users u ON m.user_id = u.id
        WHERE u.id = ? AND title LIKE ?
        GROUP BY title
        ORDER BY MAX(start_time)",user_id, search])
    else
      Menu.find_by_sql(["
        SELECT title, MAX(start_time), m.id
        FROM menus m
        LEFT OUTER JOIN cooking_records c ON m.id = c.menu_id
        JOIN users u ON m.user_id = u.id
        WHERE u.id = ?
        GROUP BY title
        ORDER BY MAX(start_time)",user_id])
    end
  end
end
