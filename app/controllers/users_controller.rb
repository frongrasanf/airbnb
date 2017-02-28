class UsersController < ApplicationController
  def show
    @user = User.new
    @rooms = current_user.rooms
    @bookings = current_user.bookings.order('id DESC')
    @review = Review.new
  end
end
