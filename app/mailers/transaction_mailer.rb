class TransactionMailer < ApplicationMailer

  def paid(user, order)
    @order = order
    @user = user
    mail to: @user.email, subject: 'Product succeessful paid.'
  end

  def unpaid(user, order)
    @order = order
    @user = user
    mail to: @user.email, subject: 'Products unpaid.'
  end

end