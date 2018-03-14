class TransactionsController < ApplicationController

  def new
    if current_user
    gon.client_token = generate_client_token
    @cart_items = $redis.hgetall(current_user.id)
    else
    flash[:alert] = "Please sign in to complete your order"
    redirect_to new_user_session_path
    end
  end

  def create
    @result = Braintree::Transaction.sale(
              amount: current_user.cart_total_price,
              payment_method_nonce: params[:payment_method_nonce]
              )
    order = current_user.purchase_products!
    order.create_payment(
      payment_method: @result.transaction.payment_instrument_type, 
      payment_status: @result.transaction.status, 
      payment_amount: @result.transaction.amount, 
      payment_type: @result.transaction.type, 
      payment_response: @result.transaction.processor_response_text, 
      user_id: current_user.id
    )

    if @result.success?
      TransactionMailer.paid(current_user, order).deliver_later 
      $redis.del(current_user.id)
      flash[:notice] = "Transaction completed. You will receive an email confirmation when your order is complete"
      redirect_to orders_path
    else
      order = current_user.unpurchase_products!
      TransactionMailer.unpaid(current_user, order).deliver_later
      order.create_payment(
        payment_method: @result.transaction.payment_instrument_type, 
        payment_status: @result.transaction.status, 
        payment_amount: @result.transaction.amount, 
        payment_type: @result.transaction.type, 
        payment_response: @result.transaction.processor_response_text, 
        user_id: current_user.id
      )
      gon.client_token = generate_client_token
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      render :new
    end
  end

  private

  def generate_client_token
    Braintree::ClientToken.generate
  end

end
