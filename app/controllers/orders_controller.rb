class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index
    @orders = current_user.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  # def create
  #   cart_items = $redis.hgetall(current_user.id)
  #   order = Order.create(user_id: current_user.id, status: 'pending')
  #   cart_items.each do |product, quantity|
  #     order.orders_products.create(product_id: product, quantity: quantity)
  #   end
  #   $redis.del(current_user.id)
  #   redirect_to orders_path
  # end

end
