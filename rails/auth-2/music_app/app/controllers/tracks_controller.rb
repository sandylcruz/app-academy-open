class TracksController < ApplicationController
  def new
    @track = Track.new
    render :new
  end

  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to track_url(@track)
    else
      render plain: @track.errors.full_messages
    end
  end

  def show
    @track = Track.find_by(id: params[:id])

    if @track
      render :show
    else
      redirect_to tracks_url
    end
  end

  def edit
    @track = Track.find_by(id: params[:id])
    render :edit
  end

  def update
    @track = Track.find_by(id: params[:id])

    if @track.nil?
      redirect_to tracks_url
    elsif @track.update_attributes(track_params)
      redirect_to track_url(@track)
    else
      redirect_to edit_track_url(@track)
    end
  end

  def destroy
  end

  private
  
  def track_params
    params.require(:track).permit(:name, :album_id, :bonus, :ord)
  end
end