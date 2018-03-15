module Accessible

  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected

  def check_user
    if current_admin
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(admin_root_path) && return
    elsif current_user && session[:cart].present?
      flash.clear
      if session[:cart].nil?
        redirect_to root_path
      else
        session[:cart].each do |product_id, quantity|
          $redis.hset current_user.id, product_id, quantity
        end
        session[:cart] = nil
        redirect_to cart_path
      end
    end
  end

end
