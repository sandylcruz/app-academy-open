import React from "react";

class PokemonIndex extends React.Component {
  componentDidMount() {
    this.props.requestAllPokemon();
  }

  render() {
    return (
      <div>
        <ul className="pokemon-index">
          {this.props.pokemon.map((pokemon) => (
            <li key={pokemon.id}>{pokemon.name}</li>
            // <img src=$`` />
          ))}
        </ul>
      </div>
    );
  }
}

export default PokemonIndex;
