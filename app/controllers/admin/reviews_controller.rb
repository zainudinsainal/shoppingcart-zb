class Admin::ReviewsController < ApplicationController

  layout 'admin'
  before_action :authenticate_admin!

  def index
    @reviews= Review.all
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:alert] = "Category was successfully deleted"
    redirect_to admin_categories_path
  end

end
