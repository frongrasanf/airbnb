class RoomsController < ApplicationController

  before_action :set_new_user, except: %i[new create]

  def index
    @room = Room.new
    @rooms = Room.order('id DESC').limit(3)
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
    @booking = Booking.new
  end

  def search
    @keyword = params[:keyword]
    @rooms = Room.near([params[:room][:latitude], params[:room][:longitude]], 50)
  end

  private

  def set_new_user
    @user = User.new
  end

  def room_params
    params.require(:room).permit(:title, :city, :room_type, :image).merge(user_id: current_user.id)
  end
end
