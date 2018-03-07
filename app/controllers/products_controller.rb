class ProductsController < ApplicationController

  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @review = Review.new
  end

end
