class RestaurantsController < ApplicationController

  def show
    @products = Product.all
    @restaurants = Restaurant.all
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restuarant_params
    params.require(:restaurant).permit(:stall_name, :stall_address, :picture)
  end

end
