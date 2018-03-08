class CartsController < ApplicationController

  before_action :authenticate_user!

  def show
    @cart_items = current_user.cart_items
    @cart_total_price = current_user.cart_total_price
  end

  def add_to_cart
    $redis.hincrby(current_user.cart_number, params[:product_id], params[:quantity] || 1)
    @link_id = "#add-to-cart-#{params[:product_id]}"
    redirect_to cart_path
  end

  def remove_from_cart
    $redis.hdel(current_user.cart_number, params[:product_id])
    flash[:notice] = 'Product removed from cart'
    redirect_to cart_path
  end

  def add_one
    $redis.hincrby(current_user.cart_number, params[:product_id], params[:quantity] || 1)
    @cart_items = current_user.cart_items
    @cart_total_price = current_user.cart_total_price
    @link_id = "#plus-to-cart-#{params[:product_id]}"
  end

  def remove_one
    $redis.hincrby(current_user.cart_number, params[:product_id], -1)
    $redis.hdel(current_user.cart_number, params[:product_id]) if $redis.hget(current_user.cart_number, params[:product_id]).to_i <= 0
    @cart_items = current_user.cart_items
    @cart_total_price = current_user.cart_total_price
    @link_id = "#minus-from-cart-#{params[:product_id]}"

  end


end
