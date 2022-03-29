class AddRateToMenu < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :rate, :integer
  end
end
