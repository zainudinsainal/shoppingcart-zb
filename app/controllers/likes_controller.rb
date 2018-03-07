class LikesController < ApplicationController
  def create
    Like.create(product_id: params[:id], user: current_user)
    @reviews = Post.all
    render :toggle
  end



  def destroy
    like = Like.find_by(product_id: params[:id])
    like.destroy
    @reviews = Post.all
    render :toggle
  end

  private

  def likes_params
    params.require(:like).permit(:review_id, :user_id)
  end

end
