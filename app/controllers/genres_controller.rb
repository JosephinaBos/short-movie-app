class GenresController < ApplicationController

  before_action :find_movie, only: [:edit, :update, :destroy]

  def index
    @genre = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.create(genre_params)
    redirect_to genres_index_path
  end

  def edit
  end

  def update
    @genre.update(genre_params)
    redirect_to genres_index_path
  end

  def destroy
    @genre.destroy
    redirect_to genres_index_path
  end

  private

  def genre_params
    params.require(:genres).permit(:name)
  end

  def find_genre
    @genre = Genre.find(params[:id])
  end
end
