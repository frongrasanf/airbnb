class Room < ApplicationRecord
  geocoded_by :prefecture
  after_validation :geocode, if: :prefecture_changed?
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :bookings
end
