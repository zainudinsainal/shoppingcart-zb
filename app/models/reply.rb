class Reply < ApplicationRecord
  belongs_to :review
  belongs_to :user

  has_many :reply_likes, dependent: :destroy

  validates :body, presence: true
end
