class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true, null: false
      t.references :room, foreign_key: true, null: false
      t.date :check_in_date, null: false
      t.date :check_out_date, null: false
      t.timestamps
    end
  end
end
