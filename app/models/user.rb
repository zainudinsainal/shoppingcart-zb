class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :address, presence: true
  validates :name, presence: true
  validates :birthday, presence: true
  enum gender: [:male ,:female]

  has_many :orders
  has_many :reviews
  has_many :likes


  def cart_number
    self.cart_id
  end

#hash {product_id: quantity}
  def cart_items
    items = $redis.hgetall(cart_number)
    items = Product.find(product_id)
      
    end
  end


