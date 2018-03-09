class CartsController < ApplicationController

  before_action :authenticate_user!

  def show
    @cart_items = $redis.hgetall(current_user.id)
    

  end

  def add_to_cart
    $redis.hincrby(current_user.id, params[:product_id], params[:quantity] || 1)

    redirect_to cart_path
  end

  def remove_from_cart
    $redis.hdel(current_user.id, params[:product_id])
    flash[:notice] = 'Product removed from cart'
    redirect_to cart_path
  end

  def add_one
    $redis.hincrby(current_user.id, params[:product_id], params[:quantity] || 1)
    redirect_to cart_path

  end

  def remove_one
    $redis.hincrby(current_user.id, params[:product_id], -1)
    redirect_to cart_path


  end






end
