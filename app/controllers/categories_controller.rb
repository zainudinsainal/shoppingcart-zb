class CategoriesController < ApplicationController

  before_action :authenticate_user!

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @products = @category.products.all
  end

end
