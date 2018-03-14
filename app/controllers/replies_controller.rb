class RepliesController < ApplicationController

  before_action :authenticate_user!

  def new
    @reply = Reply.new
    @review = Review.find(params[:review_id])
    @product = Product.find(params[:product_id])
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:review_id])
    @reply = @review.replies.create(reply_params)
    @reply.user = current_user
    @reply.save
    redirect_to new_product_review_reply_path(params[:review_id])
  end
  
  def destroy 
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:review_id])
    @reply = Reply.find(params[:id])
    @reply.destroy
    redirect_to new_product_review_reply_path
  end

  private

  def reply_params
    params.require(:reply).permit(:body)
  end

end
