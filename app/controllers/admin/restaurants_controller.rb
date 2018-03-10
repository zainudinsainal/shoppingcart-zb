class Admin::RestaurantsController < ApplicationController

  layout 'admin'
  before_action :authenticate_admin!
  before_action :set_product, only:  [:show, :edit, :update, :destroy]


  def index
    @products = Product.all
    @categories = Category.all
  end

  def new
    @product = Product.new
  end

   def create

    @product = Product.new(product_params)
    
    if @product.save
      flash[:notice] = "Food was successfully created"
      redirect_to admin_products_path
    else
      flash.now[:alert] = "Food was failed to create"
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash[:notice] = "Food was successfully updated"
      redirect_to admin_product_path(@product)
    else
      flash.now[:alert] = "Food was failed to update"
      render :edit
    end
  end

  def destroy
    @product.destroy
    flash[:alert] = "Food was deleted"
    redirect_to admin_products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :image, :description, :category_ids)
  end

  def set_product
    @product = Product.find(params[:id])
  end
  
end
