class Reply < ApplicationRecord
  belongs_to :review
  belongs_to :user

  has_many :reply_likes

  validates :body, presence: true
end
