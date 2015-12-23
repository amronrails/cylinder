class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_email.subject
  #
  def welcome_email(user)
  	@user = user
  	@url = "https://sylinder.heroku.com"
    @greeting = "Hi"

    mail(to: @user.email, subject: "Welcome ya 3ars")
  end
end
