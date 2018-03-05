class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true

  has_many :categories_products, dependent: :destroy
  has_many :categories, through: :products

  has_many :orders_products, dependent: :destroy
  has_many :orders, through: :orders_products
end
