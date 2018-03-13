class TransactionsController < ApplicationController

  def new
    gon.client_token = generate_client_token
    @cart_items = $redis.hgetall(current_user.id)
  end

  def create
    @result = Braintree::Transaction.sale(
              amount: current_user.cart_total_price,
              payment_method_nonce: params[:payment_method_nonce])

    if @result.success?
      order = current_user.purchase_products!
      order.create_payment(payment_method: @result.transaction.payment_instrument_type, payment_status: @result.transaction.status , payment_amount: @result.transaction.amount, payment_type: @result.transaction.type, payment_response: @result.transaction.processor_response_text, user_id: current_user.id)
      $redis.del(current_user.id)
      redirect_to orders_path, notice: "Congraulations! Your transaction has been successfully!"
    else
      flash[:alert] = "Something went wrong while processing your transaction. Please try again!"
      gon.client_token = generate_client_token
      render :new
    end
  end

  private

  def generate_client_token
    Braintree::ClientToken.generate
  end

end
