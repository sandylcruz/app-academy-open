class ArtworkSharesController < ApplicationController
  def index
    render json: ArtworkShare.all
  end

  def create
    artwork_share = ArtworkShare.new(artwork_share_params)

    if artwork_share.save
      render json: artwork_share
    else
      render json: artwork_share.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork_share = ArtworkShare.find_by(id: params[:id])
    artwork_share.destroy
    
    if artwork_share.nil?
      render json: { error: "not_found" }, status: :not_found
    else
      artwork_share.destroy
    end
  end

  def show
    artwork_share = ArtworkShare.find_by(id: params.require(:id))

    if artwork_share
      render json: artwork_share
    else
      render json: { error: "not_found" }, status: :not_found
    end
  end

  private

  def artwork_share_params
    params.require(:artwork_share).permit(:artwork_id, :viewer_id)
  end
end