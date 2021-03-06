class RelationshipsController < ApplicationController

  before_action :authenticate_user!

  def create
    restaurant = Restaurant.find(params[:id])
    restaurant.relationships.create(user: current_user)
    redirect_to restaurant_path(params[:restaurant_id])
  end

  def destroy
    restaurant = Restaurant.find(params[:id])
    follow = Relationship.find_by(user: current_user, restaurant: restaurant)
    follow.destroy
    redirect_to restaurant_path(params[:restaurant_id])
  end

  private

  def follow_params
    params.require(:relationship).permit(:restaurant_id, :user_id)
  end

end
