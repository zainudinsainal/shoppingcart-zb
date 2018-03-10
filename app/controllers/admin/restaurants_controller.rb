class Admin::RestaurantsController < ApplicationController

  layout 'admin'
  before_action :authenticate_admin!
  before_action :set_restaurant, only:  [:show, :edit, :update, :destroy]


  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

   def create

    @restaurant = Restaurant.new(restaurant_params)
    
    if @restaurant.save
      flash[:notice] = "Restaurant was successfully created"
      redirect_to admin_restaurants_path
    else
      flash.now[:alert] = "Restaurant was failed to create"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      flash[:notice] = "Restaurant was successfully updated"
      redirect_to admin_restaurant_path(@restaurant)
    else
      flash.now[:alert] = "Restaurant was failed to update"
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    flash[:alert] = "Restaurant was deleted"
    redirect_to admin_restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:stall_name, :stall_address, :picture)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
