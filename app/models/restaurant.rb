class Restaurant < ApplicationRecord
  has_many :products
  has_many :relationships

  mount_uploader :picture, PictureUploader
end
