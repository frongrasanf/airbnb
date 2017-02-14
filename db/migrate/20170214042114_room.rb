class Room < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :title,              null: false
      t.string :prefecture,         null: false
      t.string :room_type,          null: false
    end
  end
end
