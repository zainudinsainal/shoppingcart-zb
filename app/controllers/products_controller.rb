class ProductsController < ApplicationController

  def index
    @products = Product.page(params[:page]).per(15)
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @restaurant = @product.restaurant
    @review = Review.new
    @review_find = Review.find_by(params[:review_id])
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
    if current_user
      $redis.hincrby current_user.id, params[:id], 1
    else
      session[:cart] ||= {}
      session[:cart][params[:id]] ||= 0
      session[:cart][params[:id]] += 1
    end
    redirect_to cart_path
  end

  def remove_one
    if current_user
      $redis.hincrby current_user.id, params[:id], -1
      if $redis.hget(current_user.id, params[:id]).to_i == 0
        $redis.hdel current_user.id, params[:id]
        flash[:notice] = 'Food removed from cart'
      end
    else
      session[:cart][params[:id]] -= 1
      if session[:cart][params[:id]] == 0
        session[:cart] = nil
        flash[:notice] = 'Food removed from cart'
      end
    end
    redirect_to cart_path
  end

  def remove_from_cart
    if current_user
      $redis.hdel(current_user.id, params[:id])
      flash[:notice] = 'Food removed from cart'
    else
      session[:cart] = nil
      flash[:notice] = 'Food removed from cart'
    end
    redirect_to cart_path
  end

  private

  def favourite_params
    params.require(:favourite).permit(:product_id, :user_id)
  end

  def review_params
    params.require(:review).permit(:content, :image_review)
  end

end
