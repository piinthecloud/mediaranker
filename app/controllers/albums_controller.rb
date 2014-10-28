class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def show

  end

  def edit

  end

  def update

  end


  def create
    @album = Album.new(album_params)
  end

  def destroy

  end

  private

  def album_params
    params.require(:album).permit(:name, :creator, :description)
  end

end
