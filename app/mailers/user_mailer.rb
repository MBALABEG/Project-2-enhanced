class UserMailer < ApplicationMailer

  def account_activation(user)
    @user = user
        @user.inspect
    mail to: user.email, subject: "Account activation"
  end

  def password_reset(user)
    @user = user
        @user.inspect
    mail to: user.email, subject: "Password reset"
  end

  def contact_email(user)
    @user = user
    @user.inspect
    mail to: "mbalabeg@yahoo.com", subject:  "Contact Email"
  end

end
