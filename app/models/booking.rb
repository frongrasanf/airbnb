class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_many :reviews
end
