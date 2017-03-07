class UsersController < ApplicationController

  before_action :authenticate_user!, only: [:show]

  def show
    @user = User.new
    @rooms = current_user.rooms.order('id DESC')
    @bookings = current_user.bookings.order('id DESC')
    @review = Review.new
  end
end
