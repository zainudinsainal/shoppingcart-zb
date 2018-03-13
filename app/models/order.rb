class Order < ApplicationRecord

  enum status:[ :paid, :delivered, :refund]

  has_many :orders_products, dependent: :destroy
  has_many :products, through: :orders_products

  belongs_to :user

  def total_price
    orders_products.map do |order_product|
      order_product.unit_price * order_product.quantity
    end.reduce(:+)
  end
end
