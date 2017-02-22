class Room < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :bookings
end
