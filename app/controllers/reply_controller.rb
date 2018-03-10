class ReplyController < ApplicationController
  def index
    @replies = Reply.all
  end

  def create

    @review = Review.find(params[:review_id])
    @reply = @review.replies.create(reply_params)
    #byebug
    @reply.user = current_user
    @reply.save
    redirect_to product_path(@product)
  end
  
  def destroy 
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
