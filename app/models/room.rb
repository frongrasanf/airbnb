class Room < ApplicationRecord
  validates :title, :city, :room_type, presence: true
  validates :image, presence: true, file_size: { maximum: 1.megabytes.to_i }

  geocoded_by :city
  after_validation :geocode, if: :city_changed?
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
end
