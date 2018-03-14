class ReplyLikesController < ApplicationController

  before_action :authenticate_user!

  def create
    reply = Reply.find(params[:id])
    reply.reply_likes.create(user: current_user)
    redirect_to new_product_review_reply_path(params[:review_id])
  end
  
  def destroy
    reply = Reply.find(params[:id])
    replyLike = ReplyLike.find_by(user: current_user, reply: reply)
    replyLike.destroy
    redirect_to new_product_review_reply_path
  end

  private

  def reply_likes_params
    params.require(:reply_like).permit(:reply_id, :user_id)
  end

end
