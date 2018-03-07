class ReviewsController < ApplicationController
  def create
    @product = Restaurant.find(params[:restaurant_id])
    @review = @product.reviews.build(review_params)
    @review.user = current_user
    @review.save!
    redirect_to product_path(@restaurant)
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @comment = Comment.find(params[:id])

    if current_user.admin?
      @comment.destroy
      redirect_to restaurant_path(@restaurant)
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

end
