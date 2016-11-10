class Movie < ApplicationRecord
  has_many :downloads, dependent: :destroy
  has_many :wishlist_movies, dependent: :destroy

  validates :name, :duration, presence: :true
end
