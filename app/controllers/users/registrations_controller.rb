class Users::RegistrationsController < Devise::RegistrationsController

  def new
    super
  end

  def create
    super
    UserMailer.registration(resource).deliver unless resource.invalid?
  end
end
