class UserMailer < ApplicationMailer

  def registration(user)
    @name = user.name

    mail(
      to: user.email,
      subject: "会員登録完了のお知らせ"
    ) do |format|
      format.html
    end
  end
end
