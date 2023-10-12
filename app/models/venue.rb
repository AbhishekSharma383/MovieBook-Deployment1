class Venue < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :capacity, presence: true

  has_one_attached :image
  has_many :showtimes, dependent: :destroy
  has_many :movies, through: :showtimes
end