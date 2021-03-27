import { Link, Route } from "react-router-dom";
import React from "react";
import PokemonDetailContainer from "./pokemon_detail_container.js";

class PokemonIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    if (this.props.loading) {
      return (
        <div id="loading-pokeball-container">
          <div id="loading-pokeball"></div>
        </div>
      );
    }

    return (
      <div>
        <li className="pokemon-index-item">
          <Link to={`/pokemon/${this.props.pokemon.id}`}>
            <span>{this.props.pokemon.id}</span>
            <img src={this.props.pokemon.imageUrl} />
            <span>{this.props.pokemon.name}</span>
          </Link>
        </li>
      </div>
    );
  }
}

export default PokemonIndexItem;
