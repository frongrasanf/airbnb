class AddStayDaysToBookings < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :stay_days, :integer
  end
end
