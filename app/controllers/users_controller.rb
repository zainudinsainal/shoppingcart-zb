class UsersController < ApplicationController

  before_action :authenticate_user!

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Profile successfully updated"
      redirect_to products_path
    else
      flash.now[:alert] = "Profile failed to update"
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :birthday, :address, :gender)
  end

end
