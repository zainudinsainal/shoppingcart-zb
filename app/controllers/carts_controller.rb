class CartsController < ApplicationController

  before_action :authenticate_user!

  def show
    @cart_items = $redis.hgetall(current_user.id)
  end

end
