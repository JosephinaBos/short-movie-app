class MoviesController < ApplicationController

  before_action :find_movie, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.create(movie_params)
  end

  def edit
  end

  def update
    @movie.update(movie_params)
  end

  def destroy
    @movie.destroy
  end
end

private

def movie_params
  params.require(:movies).permit(:name, :director, :duration, :genre, :summary)
end

def find_movie
  @movie = Movie.find(params[:id])
end
