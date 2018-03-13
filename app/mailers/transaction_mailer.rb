class TransactionMailer < ApplicationMailer
  def paid(user, order)
    #byebug
    @order = order
    @user = user
    mail to: @user.email, subject: "Welcome to the application"
  end

  def unpaid(user)
    @order = Order.find(params[:id])
    @user = user
    mail to: @user.email, subject: "Products unpaid."
  end



end
