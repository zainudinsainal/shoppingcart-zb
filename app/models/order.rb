class Order < ApplicationRecord

  enum status:[ :paid, :delivered, :refund]

  has_many :orders_products, dependent: :destroy
  has_many :products, through: :orders_products
  has_one :payment, foreign_key: "order_id", class_name: "Transaction"

  belongs_to :user
end
