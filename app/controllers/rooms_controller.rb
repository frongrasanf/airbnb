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
    if room.save
      redirect_to root_path
    else
      redirect_to new_room_path
    end
  end

  def show
    @room = Room.find(params[:id])
    @user = User.new
  end

  private

  def room_params
    params.require(:room).permit(:title, :prefecture, :room_type).merge(user_id: current_user.id)
  end
end
