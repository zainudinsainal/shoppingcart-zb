class ReplyController < ApplicationController
  def index
    @replies = Reply.all
    @review = Review.find(params[:review_id])
    @reply = Reply.new
  end

  def new
    @reply = Reply.new
  end

  def show
    review = Review.find(params[:review_id])
    @replies = Reply.find(user: current_user, review: review )
  end

  def create
    @product = Product.find(params[:product_id])
    @review = Review.find(params[:review_id])
    @reply = @review.replies.create(reply_params)
    #byebug
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

  def review_params
    params.require(:review).permit(:content, :image_review)
  end

end
