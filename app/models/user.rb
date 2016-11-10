class User < ApplicationRecord
  has_many :downloads
  has_many :wishlist_movies
end
