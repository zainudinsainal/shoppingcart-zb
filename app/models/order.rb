class Order < ApplicationRecord

  enum status:[ :paid, :delivered, :refund]

  has_many :orders_products, dependent: :destroy
  has_many :products, through: :orders_products

  belongs_to :user
end
