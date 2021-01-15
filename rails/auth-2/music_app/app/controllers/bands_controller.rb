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

  def edit
  end

  def show
  end

  def update
  end

  def delete
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end

end