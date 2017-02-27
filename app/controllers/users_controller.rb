class UsersController < ApplicationController
  def show
    @user = User.new
    @rooms = Room.all.order('id DESC')
    @bookings = current_user.bookings.order('id DESC')
  end
end
