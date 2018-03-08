class ProductsController < ApplicationController

  before_action :authenticate_user!

  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

  def favourite
    @product = Product.find(params[:product_id])
    #byebug
    @product.favourites.create!(product: @product)
    redirect_back(fallback_location: root_path)
  end

  def unfavorite
    @product = Product.find(params[:product_id])
    favorite = Favourite.where(product: @product)
    favorite.destroy_all
    redirect_back(fallback_location: root_path)
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

  private

  def favourite_params
    params.require(:favourite).permit(:product_id, :user_id)
  end


end
