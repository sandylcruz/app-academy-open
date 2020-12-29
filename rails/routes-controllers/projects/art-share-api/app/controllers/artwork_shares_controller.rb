class ArtworkSharesController < ApplicationController
  def index
    render json: ArtworkShare.all
  end

  def destroy
    artwork_share = Artwork.find_by(id: params[:id])
    artwork_share.destroy
  end
end