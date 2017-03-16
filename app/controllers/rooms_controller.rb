class RoomsController < ApplicationController

  before_action :set_new_user, except: %i[new create]

  def index
    @room = Room.new
    @rooms = Room.order('id DESC').limit(6)
    @reviews = Review.order('id DESC')
  end

  def new
    @room = Room.new
  end

  def create
    user = current_user
    room = Room.new(room_params)
    if room.save
      redirect_to root_path
      ListingRoomMailer.listing(user).deliver
    else
      redirect_to new_room_path
    end
  end

  def show
    @room = Room.find(params[:id])
    @booking = Booking.new
    @reviews = @room.reviews
  end

  def search
    @check_in_date = params[:check_in_date]
    @check_out_date = params[:check_out_date]
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
