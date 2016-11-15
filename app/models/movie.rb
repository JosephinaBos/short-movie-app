class Movie < ApplicationRecord
  has_many :downloads, dependent: :destroy
  has_many :wishlist_movies, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :genres, through: :categories

  validates :name, :duration, presence: :true
end
