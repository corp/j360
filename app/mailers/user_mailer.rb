class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user.password_recovery.subject
  #
  def password_recovery(user)
    @user = user
    mail to: @user.email
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user.registration.subject
  #
  def registration(user)
    @user = user
    mail to: @user.email
  end
end
