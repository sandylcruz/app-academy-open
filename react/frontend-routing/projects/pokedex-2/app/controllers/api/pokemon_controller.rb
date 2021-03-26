class Api::PokemonController < ApplicationController
  def index 
    sleep 0.5
    @pokemon = Pokemon.all 
    render :index 
  end


  def show 
    sleep 0.5
    @pokemon = Pokemon.find(params[:id])
    render :show
  end

  def create
    @pokemon = Pokemon.new(pokemon_params)

    if @pokemon.save
      @pokemon.create!
      redict_to pokemon_url(@pokemon)
    else
      render @pokemon.errors.full_messages
    end
  end

  private

  def pokemon_params
    params.require(:pokemon).permit(:name, :image_url, :poke_type, :attack, :defense, :move1, :move2)
  end
end
