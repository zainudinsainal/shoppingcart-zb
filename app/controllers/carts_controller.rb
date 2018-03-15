class CartsController < ApplicationController

  def show
    @cart_items = if current_user
                    $redis.hgetall(current_user.id)
                  else
                    session['cart']
                  end
  end

end
