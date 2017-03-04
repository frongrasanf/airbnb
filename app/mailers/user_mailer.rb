class UserMailer < ApplicationMailer

  def registration
    @greeting = "Hi"

    mail to: ENV['SAMPLE_ADDRESS']
  end
end
