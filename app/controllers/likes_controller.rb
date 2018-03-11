class LikesController < ApplicationController
  def create
    review = Review.find(params[:id])
    byebug
    review.likes.create(user: current_user)
    redirect_to product_path(params[:product_id])
  end
  
  def destroy
    review = Review.find(params[:id])
    like = Like.find_by(user: current_user, review: review)
    like.destroy
    redirect_to product_path(params[:product_id])
  end

  private

  def likes_params
    params.require(:like).permit(:review_id, :user_id)
  end

end
