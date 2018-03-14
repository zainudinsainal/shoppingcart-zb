class Restaurant < ApplicationRecord
  has_many :products, dependent: :destroy
  has_many :relationships, dependent: :destroy

  mount_uploader :picture, PictureUploader
end
