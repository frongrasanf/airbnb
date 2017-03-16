class ListingRoomMailer < ApplicationMailer
  def listing(user, room)
    @name = user.name
    @title = room.title
    @city = room.city

    mail(
      to: user.email,
      subject: "リスティング完了のお知らせ"
    ) do |format|
      format.html
    end
  end
end
