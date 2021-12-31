class RenameCookingDateColumnToCookingRecords < ActiveRecord::Migration[6.0]
  def change
    rename_column :cooking_records, :cooking_date, :start_time
  end
end
