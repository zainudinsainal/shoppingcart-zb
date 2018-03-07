class ProductsController < ApplicationController

  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def add_to_cart
    $redis.hincrby current_user.id, params[:id], 1
    redirect_to product_path(params[:id])
  end

  def remove_from_cart
    $redis.hincrby current_user.id, params[:id], -1
    if $redis.hget(current_user.id, params[:id]).to_i == 0
      $redis.hdel current_user.id, params[:id]
      redirect_to product_path(params[:id])
    end
  end

end
