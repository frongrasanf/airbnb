class UserMailer < ApplicationMailer

  def registration
    @greeting = "Hi"

    mail(
      to: ENV['SAMPLE_ADDRESS'],
      subject: "会員登録完了のお知らせ"
    ) do |format|
      format.html
    end
  end
end
