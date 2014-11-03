class AlbumsController < ApplicationController


  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_index_path
    else
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def update
    @album = Album.find(params[:id])
    if @album.update(album_params)
      redirect_to albums_index_path
    else
      render :edit
    end

  end

  def destroy
    @album = Album.find(params[:id])
    if @Album.destroy
      redirect_to albums_index_path
    end
  end


  def upvote
    @album = Album.find(params[:id])
    if @album.votes == nil
      @album.votes = 1
    else
      @album.votes += 1
    end
    @album.save
    redirect_to request.referer
  end


  private


  def album_params
    params.require(:album).permit(:name, :creator, :description)
  end

end
