class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send_recovery_password.subject
  #
  def send_recovery_password(user)
    @user = user

    mail from: "correo@correo.com", to: user.email
  end
end
