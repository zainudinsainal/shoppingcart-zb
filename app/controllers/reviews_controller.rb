class ReviewsController < ApplicationController
  
  def index
    @reviews = Review.all
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.build(review_params)
    @review.user = current_user
    @review.save
      
    redirect_to product_path(@product)
  end

  def destroy
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])

      @review.destroy
      redirect_to product_path(@product)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
