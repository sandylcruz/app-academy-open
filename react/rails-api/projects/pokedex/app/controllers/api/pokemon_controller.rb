class Api::PokemonController < ApplicationController
  def index
    @pokemon = Pokemon.find_by(id: params[:id])
    render json: @pokemon
  end

  def show
    @poke = Pokemon.find_by(id: params[:id])
    render json: @poke
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :attack, :defense, :poke_type, :image_url)
  end
end
