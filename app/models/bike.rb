class Bike < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :model, presence: true
  validates :brand, presence: true
  validates :price, presence: true
  validates :speed, presence: true
  validates :rented, inclusion: { in: [true, false] }
end
