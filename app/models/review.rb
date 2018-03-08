class Review < ApplicationRecord
  validates :content, presence: true
  belongs_to :user
  belongs_to :product
  has_many :likes, dependent: :destroy

  mount_uploader :image_review, PhotoUploader
end
