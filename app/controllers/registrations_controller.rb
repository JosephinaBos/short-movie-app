class RegistrationsController < Devise::RegistrationsController
  def create
    super
    if resource.save
      UserMailer.welcome(resource).deliver_now
    end
  end
end
