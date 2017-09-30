class Song < ApplicationRecord
  has_many :albums
  has_many :artists, through: :albums
end
