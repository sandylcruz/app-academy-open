class AlbumsController < ApplicationController
  def create
    @album = Album.new(album_params)

    if @album.save
      redirect_to album_url(@album)
    else
      render plain: @album.errors.full_messages
    end
  end

  def new
    @album = Album.new
    render :new
  end

  def show
    @album = Album.find_by(id: params[:id])

    if @album
      render :show
    else
      redirect_to albums_url
    end
  end

  def update
    @album = Album.find_by(id: params[:id])
    redirect_to bands_url
  end

  private

  def album_params
    params.require(:album).permit(:title, :year, :band_id, :live)
  end
end