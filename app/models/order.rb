class Order < ApplicationRecord
  validates :order_num, presence: true
  validates :total_price, presence: true
  validates :order_date, presence: true
  enum status:[ :fail, :pass]
end
