class Library < ApplicationRecord
  has_one_attached :image
  validates :card_type, presence: true
  validates :numbers, presence: true
  validates :image, presence: true
end
