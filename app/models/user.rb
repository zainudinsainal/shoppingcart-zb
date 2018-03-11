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
  has_many :replies
  has_many :reply_likes
  has_many :likes
  has_many :relationships

  has_many :favourites
end

