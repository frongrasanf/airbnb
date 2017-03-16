class ListingRoomMailer < ApplicationMailer
  def listing(user)
    @name = user.name

    mail(
      to: user.email,
      subject: "リスティング完了のお知らせ"
    ) do |format|
      format.html
    end
  end
end
