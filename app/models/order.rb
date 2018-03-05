class Order < ApplicationRecord
  validates :order_num, presence: true
  validates :total_price, presence: true
  validates :order_date, presence: true
  enum status:[ :unsuccessful, :successful]

  has_many :orders_products, dependant: :destroy
  has_many :products, through: :orders_products

  belongs_to :user
end
