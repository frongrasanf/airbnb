class RemoveUserIdFromRooms < ActiveRecord::Migration[5.0]
  def change
    remove_column :rooms, :user_id, :integer
  end
end
