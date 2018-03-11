class RepliesController < ApplicationController

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
    redirect_to product_path(@product)
  end
  
  def destroy 
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:review_id])
    @reply = Reply.find(params[:id])
    @reply.destroy
    redirect_to product_path(@product)
  end

  private

  def reply_params
    params.require(:reply).permit(:body)
  end

end
