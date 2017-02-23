class UsersController < ApplicationController
  def show
    @user = User.new
    @rooms = current_user.rooms
    @bookings = current_user.bookings
  end
end
