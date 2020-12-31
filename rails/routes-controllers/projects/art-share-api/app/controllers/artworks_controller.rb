class ArtworksController < ApplicationController
  def index
    if params[:user_id]
      user = User.find_by(id: params[:user_id])

      if user.nil?
        render json: { error: "not_found" }, status: :not_found
      else 
        render json: user.artworks + user.shared_artworks
      end
    else
      render json: Artwork.all
    end
  end

  def create
    artwork = Artwork.new(id: params.require(:artist_id))

    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def show
    artwork = Artwork.find_by(id: params.require(:id))

    if artwork
      render json: artwork
    else
      render json: { error: "not_found" }, status: :not_found
    end
  end

  def update
    artwork = Artwork.find_by(id: params.require(:id))

    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork = Artwork.find_by(id: params[:id])
    
    if artwork.nil?
      render json: { error: "not_found" }, status: :not_found
    else
      artwork.destroy
    end
  end

  private
  
  def artwork_params
    params.require(:artwork).permit(:title, :image_url, :artist_id)
  end
end