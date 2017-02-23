class BookingsController < ApplicationController
  def create
    user = current_user
    booking = Booking.new(booking_params)
    room_id = booking.room_id
    stay_days = booking.check_out_date - booking.check_in_date
    booking.stay_days = stay_days.to_i
    if booking.save
      redirect_to user_path(user)
    else
      redirect_to room_path(room_id)
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:room_id, :check_in_date, :check_out_date).merge(user_id: current_user.id)
  end
end
