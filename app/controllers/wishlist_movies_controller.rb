class WishlistMoviesController < ApplicationController
  def index
    @wishlist = WishlistMovie.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
