# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController

  include Accessible
  skip_before_action :check_user, only: [:destroy]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end

  # private

  # def session_to_cart
  #   if session[:cart] == nil
  #     redirect_to root_path
  #   else
  #     session[:cart].each do |product_id, quantity|
  #       $redis.hset current_user.id, product_id, quantity
  #     end
  #     session[:cart] = nil
  #     redirect_to cart_path
  #   end
  # end

end
