class BandsController < ApplicationController
  def create
    @band = Band.new(band_params)

    if @band.save
      render plain: "You added a new band"
    else
      render plain: "you failed"
    end
  end

  def new
    @band = Band.new
    render :new
  end

  def show
    @band = Band.find_by(id: params[:id])

    if @band
      render :show
    else
      redirect_to bands_url
    end
  end

  def edit
    @band = Band.find_by(id: params[:id])
    render :edit
  end

  def update
    id = params[:id]
    @band = Band.find_by(id: params[:id])

    if @band.nil?
      redirect_to bands_url
    elsif @band.update_attributes(band_params)
      redirect_to band_url(@band)
    else
      redirect_to edit_band_url(@band)
    end
  end

  def delete
  end

  def index
    @bands = Band.all
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end

end