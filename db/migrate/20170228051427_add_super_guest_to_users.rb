class AddSuperGuestToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :super_guest, :boolean, null: false, default: false
  end
end
