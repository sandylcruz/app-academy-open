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
        <h2>{this.props.pokemon.name}</h2>
        <h2>Attack: </h2>
        <h2>Defense: </h2>
        <h1>Moves: {this.props.pokemon.moves}</h1>
      </div>
    );
  }
}

export default PokemonDetail;
