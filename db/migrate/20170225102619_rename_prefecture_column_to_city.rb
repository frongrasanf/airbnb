class RenamePrefectureColumnToCity < ActiveRecord::Migration[5.0]
  def change
    rename_column :rooms, :prefecture, :city
  end
end
