class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :release_date, presence: true

  has_one_attached :image
  has_many :showtimes, dependent: :destroy
  has_many :venues, through: :showtimes
  
end
