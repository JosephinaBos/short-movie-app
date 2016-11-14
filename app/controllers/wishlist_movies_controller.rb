class WishlistMoviesController < ApplicationController
  def index
    @wishlist = WishlistMovie.all
  end

  # def new
  #   @wishlist = Wishlist.new
  #    redirect_to new_movie_wishlist_movie_path, method: :create
  # end

  def create
    @wishlist = WishlistMovie.new
    @wishlist.movie = Movie.find(params[:movie_id])
    @wishlist.user = User.find(current_user)
    if @wishlist.save
      redirect_to movie_wishlist_movies_path(params[:movie_id])
    else
      raise 'error'
    end
  end

  def destroy
    @wishlist = WishlistMovie.find(params[:id])
    @wishlist.destroy
    redirect_to movie_wishlist_movies_path
  end
end


