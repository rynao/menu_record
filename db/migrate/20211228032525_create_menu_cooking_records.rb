class CreateMenuCookingRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_cooking_records do |t|
      t.references :menu,           null: false, foreign_key: true
      t.references :cooking_record, null: false, foreign_key: true
      t.timestamps
    end
  end
end
