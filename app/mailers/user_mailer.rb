class UserMailer < ApplicationMailer

  def registration
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
