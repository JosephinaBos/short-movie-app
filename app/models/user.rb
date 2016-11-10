class User < ApplicationRecord
  has_many :downloads
  has_many :wishlist_movies

  validates :first_name, :last_name, presence: :true
end
