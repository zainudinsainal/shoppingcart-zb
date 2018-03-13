class TransactionMailer < ApplicationMailer
  def paid(user, order)
    @order = order
    @user = user
    mail to: @user.email, subject: "Welcome to the application"
  end

  def unpaid(user, order)
    @order = order
    @user = user
    mail to: @user.email, subject: "Products unpaid."
  end



end
