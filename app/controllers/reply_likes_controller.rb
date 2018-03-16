class ReplyLikesController < ApplicationController

  before_action :authenticate_user!

  def create
    reply = Reply.find(params[:id])
    reply.reply_likes.create(user: current_user)
    redirect_to new_product_review_reply_path(@product, @review, params[:review_id])
  end

  def destroy
    reply = Reply.find(params[:id])
    reply_like = ReplyLike.find_by(user: current_user, reply: reply)
    reply_like.destroy
    redirect_to new_product_review_reply_path
  end

  private

  def reply_likes_params
    params.require(:reply_like).permit(:reply_id, :user_id)
  end

end
