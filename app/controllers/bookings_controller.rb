class BookingsController < ApplicationController
  def create
    booking = Booking.new(booking_params)
    if booking.save
      redirect_to root_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:room_id, :check_in_date, :check_out_date).merge(user_id: current_user.id)
  end
end
