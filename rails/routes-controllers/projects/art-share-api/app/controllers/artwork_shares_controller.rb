class ArtworkSharesController < ApplicationController
  def index
    render json: ArtworkShare.all
  end
end