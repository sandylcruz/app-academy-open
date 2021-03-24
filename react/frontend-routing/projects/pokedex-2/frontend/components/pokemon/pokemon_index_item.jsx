import { Link } from "react-router-dom";
import React from "react";

class PokemonIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    const pokemonItems = pokemon.map((poke) => (
      <PokemonIndexItem key={poke.id} pokemon={poke} />
    ));

    return (
      <li className="pokemon-index-item">
        <Link to={`/pokemon/${this.props.pokemon.id}`}>
          <ul key={pokemonItems.id}>{pokemonItems}</ul>
        </Link>
      </li>
    );
  }
}

export default PokemonIndexItem;
