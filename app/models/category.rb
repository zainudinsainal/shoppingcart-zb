class Category < ApplicationRecord
  validates :name, presence: true

  has_many :categories_products, dependant: :destroy
  has_many :products, through: :categories
end
