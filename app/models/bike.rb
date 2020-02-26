class Bike < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo
  geocoded_by :address

  validates :model, presence: true
  validates :brand, presence: true
  validates :price, presence: true
  validates :speed, presence: true
  validates :rented, inclusion: { in: [true, false] }
  after_validation :geocode, if: :will_save_change_to_address?
end

