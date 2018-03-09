class ProductsController < ApplicationController

  before_action :authenticate_user!

  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @restaurant = @product.restaurant
    @review = Review.new
  end

  def favourite
    @product = Product.find(params[:product_id])
    @product.favourites.create!(product: @product, user: current_user)
    redirect_back(fallback_location: root_path)
  end

  def unfavorite
    @product = Product.find(params[:product_id])
    favorite = Favourite.find_by(product: @product, user: current_user)
    favorite.destroy
    redirect_back(fallback_location: root_path)
  end

  def add_one
    $redis.hincrby current_user.id, params[:id], 1
    redirect_to cart_path
  end

  def remove_one
    $redis.hincrby current_user.id, params[:id], -1
    if $redis.hget(current_user.id, params[:id]).to_i == 0
      $redis.hdel current_user.id, params[:id]
      redirect_to cart_path
    end
    redirect_to cart_path
  end

  def remove_from_cart
    $redis.hdel(current_user.id, params[:id])
    flash[:notice] = 'Product removed from cart'
    redirect_to cart_path
  end



  private

  def favourite_params
    params.require(:favourite).permit(:product_id, :user_id)
  end

end
