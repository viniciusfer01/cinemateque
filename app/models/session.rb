class Session < ApplicationRecord
  belongs_to :movie
  belongs_to :movie_theater
  belongs_to :room
end
