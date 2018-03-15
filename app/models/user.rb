class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
  validates :address, presence: true
  validates :name, presence: true
  validates :birthday, presence: true
  enum gender: [:male, :female]

  has_many :orders
  has_many :reviews
  has_many :replies
  has_many :reply_likes
  has_many :likes
  has_many :relationships
  has_many :transactions
  has_many :favourites

  def cart_total_price
    cart_items = $redis.hgetall(id)
    total_price = cart_items.reduce(0) do |acc, (product_id, quantity)|
      product = Product.find(product_id)
      acc + (product.price * quantity.to_i)
    end
    # total_price = 0
    # cart_items.each do |product_id, quantity|
    #   product = Product.find(product_id)
    #   total_price += product.price * quantity.to_i
    # end
    # total_price
  end

  def purchase_products!
    cart_items = $redis.hgetall(id)
    order = orders.create(status: 'paid')
    cart_items.each do |product_id, quantity|
      product = Product.find(product_id)
      order.orders_products.create(product_id: product.id, quantity: quantity.to_i, unit_price: product.price.to_d)
    end
    order
  end

  def unpurchase_products!
    cart_items = $redis.hgetall(id)
    order = orders.create(status: 'unsuccessful')
    cart_items.each do |product_id, quantity|
      product = Product.find(product_id)
      order.orders_products.create(product_id: product.id, quantity: quantity.to_i, unit_price: product.price.to_d)
    end
    order
  end

end
