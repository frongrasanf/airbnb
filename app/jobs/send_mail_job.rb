class SendMailJob < ApplicationJob
  queue_as :default

  def perform(user, room)
    ListingRoomMailer.listing(user, room).deliver_later
  end
end
