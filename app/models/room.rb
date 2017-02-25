class Room < ApplicationRecord
  validates :title, :city, :image, :room_type,  presence: true
  geocoded_by :city
  after_validation :geocode, if: :city_changed?
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :bookings
end
