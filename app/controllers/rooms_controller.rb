class RoomsController < ApplicationController
  def index
    @room = Room.new
    @rooms = Room.all
    @user = User.new
  end
end
