class CreateCookingRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :cooking_records do |t|
      t.date :cooking_date, null: false
      t.references :user,   null: false, foreign_key: true
      t.timestamps
    end
  end
end
