class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.account_activation.subject
  #
  def account_activation
    @greeting = "Hi"
    
    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    # return success/fail
    # add code and email pair to somewhere (global variable or database)
    @code = rand() * 1000000
    @code = @code.floor
    @user = user
    
    ResetPwd.create(:email => @user.email, :reset_token => @code)
    
    @msg = mail to: user.email, subject: "reset password"
  end
end
