class DownloadsController < ApplicationController
  def index
    @downloads = Download.all
  end

  def new
  end

  def create
  end

  def destroy
  end
end
