class MoviesController < ApplicationController

  before_action :find_movie, only: [:show, :edit, :update, :destroy]

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    authorize @movie
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movie_path(@movie)
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
    params.require(:movies).permit(:name, :director, :duration, :genre, :summary)
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

end


