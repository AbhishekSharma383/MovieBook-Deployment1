class Showtime < ApplicationRecord
  belongs_to :movie
  belongs_to :venue
end
