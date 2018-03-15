class CartsController < ApplicationController

  def show
    if current_user
      @cart_items = $redis.hgetall(current_user.id)
    else
      @cart_items = session['cart']
    end
  end

end