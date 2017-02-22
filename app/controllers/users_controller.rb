class UsersController < ApplicationController
  def show
    @user = User.new
    @rooms = current_user.rooms
  end
end
