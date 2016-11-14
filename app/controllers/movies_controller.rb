class MoviesController < ApplicationController

  before_action :find_movie, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
    @genres_and_ids = Genre.pluck(:name, :id)
    authorize @movie
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.genres << Genre.find(genre_params[:genres])
    @movie.save

    redirect_to movies_path
  end

  def edit
    authorize @movie
  end

  def update
    @movie.update(movie_params)
    redirect_to movie_path(@movie)
  end

  def destroy
    authorize @movie
    @movie.destroy
    redirect_to movies_path
  end

  private

  def movie_params
    params.require(:movie).permit(:name, :director, :duration, :summary)
  end

   def genre_params
    params.require(:movie).permit(:genres)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

end


