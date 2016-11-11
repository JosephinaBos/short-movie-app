class DownloadsController < ApplicationController
  def index
    @downloads = Download.all
  end

# We are not using this guys
  def new
    @download = Download.new
    redirect_to downloads_path, method: :create
  end

  def create
    @download = Download.new
    @download.movie = Movie.find(params[:movie_id])
    @download.user = User.find(current_user)
    if @download.save
      redirect_to movie_downloads_path(params[:movie_id])
    else
      raise 'Error'
  end
 end

  def destroy
    @download.destroy
    redirect_to download_path
  end

end
