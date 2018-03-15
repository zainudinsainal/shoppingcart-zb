class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @products = Product.all
    @product = Product.find(params[:id])
    @restaurants = Restaurant.all
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restuarant_params
    params.require(:restaurant).permit(:stall_name, :stall_address, :picture)
  end

end
