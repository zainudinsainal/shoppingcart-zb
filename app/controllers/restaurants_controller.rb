class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def restuarant_params
    params.require(:restaurant).permit(:stall_name, :stall_address, :founded_date)
  end

end
