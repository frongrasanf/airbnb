class RoomsController < ApplicationController
  def index
    @room = Room.new
    @rooms = Room.all
    @user = User.new
  end

  def new
    @room = Room.new
  end

  def show
    @room = Room.find(params[:id])
    @user = User.new
  end
end
