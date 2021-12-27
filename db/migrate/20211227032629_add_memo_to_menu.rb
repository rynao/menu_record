class AddMemoToMenu < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :memo, :text
  end
end
