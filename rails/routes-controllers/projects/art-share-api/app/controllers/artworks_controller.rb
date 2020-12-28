class ArtworksController < ApplicationController
  def index
    render json: Artwork.all
  end

  # def show
  #   artwork = Artwork.find_by(id: params.require(:id))
  #   if artwork
  #     render json: artwork
  #   else
  #     render json: { error: "not_found" }, status: :not_found
  #   end
  # end
end