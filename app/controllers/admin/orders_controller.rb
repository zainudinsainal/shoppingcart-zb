class Admin::OrdersController < ApplicationController

  layout 'admin'
  before_action :authenticate_admin!
  before_action :set_order, only: [:show, :update]

  def index
    @orders = Order.all
  end

  def show
  end

  def update
    if @order.update(order_params)
      flash[:notice] = 'Order was successfully updated'
      redirect_to admin_orders_path
    else
      flash.now[:alert] = 'Order was failed to update'
      render :edit
    end
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end

  def set_order
    @order = Order.find(params[:id])
  end

end
