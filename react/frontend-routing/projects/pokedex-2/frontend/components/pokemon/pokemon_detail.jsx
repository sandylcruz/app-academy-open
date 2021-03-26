import React from "react";

class PokemonDetail extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestSinglePokemon(this.props.match.params.pokemonId);
  }

  componentDidUpdate(prevProps) {
    const previousPokemonId = prevProps.match.params.pokemonId;
    const currentPokemonId = this.props.match.params.pokemonId;

    if (previousPokemonId !== currentPokemonId) {
      this.props.requestSinglePokemon(currentPokemonId);
    }
  }

  render() {
    console.log(this.props);

    if (!this.props.pokemon) {
      return <h1>Loading</h1>;
    }

    return (
      <div class="pokemon-detail">
        <figure>
          <img src={this.props.pokemon.imageUrl}></img>
        </figure>
        <h2>{this.props.pokemon.name}</h2>
        <ul>
          <li>Type: {this.props.pokemon.pokeType}</li>
          <li>Attack: {this.props.pokemon.attack}</li>
          <li>Defense: {this.props.pokemon.defense} </li>
          <li class="text">Moves: {this.props.moves.join(", ")}</li>
          <li>Items: </li>
        </ul>
      </div>
    );
  }
}

export default PokemonDetail;
