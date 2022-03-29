class MenuCookingRecords
  include ActiveModel::Model
  attr_accessor :title, :recipe_url, :memo, :user_id, :start_time, :image, :rate

  validates :title, presence: true
  validates :user_id, presence: true
  
  def save
    menu = Menu.create(title: title, recipe_url: recipe_url, memo: memo, image: image, rate: rate, user_id: user_id)
    if :start_time.present?
      CookingRecord.create(start_time: start_time, user_id: user_id, menu_id: menu.id)
    end
  end

end