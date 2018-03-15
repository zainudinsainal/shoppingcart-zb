class Product < ApplicationRecord

  validates :name, presence: true
  validates :price, presence: true

  has_many :categories_products, dependent: :destroy
  has_many :categories, through: :categories_products

  has_many :orders_products, dependent: :destroy
  has_many :orders, through: :orders_products

  has_many :reviews, dependent: :destroy
  has_many :favourites, dependent: :destroy
  belongs_to :restaurant

  mount_uploader :image, ImageUploader

end
