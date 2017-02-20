class RoomsController < ApplicationController
  def index
    @room = Room.new
    @rooms = Room.all
    @user = User.new
  end

  def new
    @room = Room.new
  end

  def create
    room = Room.new(room_params)
    room.save
  end

  def show
    @room = Room.find(params[:id])
    @user = User.new
  end

  private

  def room_params
    params.require(:room).permit(:title, :prefecture, :room_type)
  end
end
