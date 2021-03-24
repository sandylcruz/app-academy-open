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
            <li>{pokemon.name}</li>
          ))}
        </ul>
      </div>
    );
  }
}

export default PokemonIndex;
