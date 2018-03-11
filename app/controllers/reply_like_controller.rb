class ReplyLikeController < ApplicationController
  def create
    reply = Reply.find(params[:id])
    reply.reply_likes.create(user: current_user)
    redirect_to product_path(params[:product_id])
  end
  
  def destroy
    reply = Reply.find(params[:id])
    replyLike = ReplyLike.find_by(user: current_user, reply: reply)
    replyLike.destroy
    redirect_to product_path(params[:product_id])
  end

  private

  def reply_likes_params
    params.require(:reply_like).permit(:reply_id, :user_id)
  end

end
