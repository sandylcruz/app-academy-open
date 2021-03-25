import { Link } from "react-router-dom";
import React from "react";

class PokemonIndexItem extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <li className="pokemon-index-item">
        <Link to={`/pokemon/${this.props.pokemon.id}`}>
          <span>{this.props.pokemon.id}</span>
          <img src={this.props.pokemon.imageUrl} />
          <span>{this.props.pokemon.name}</span>
        </Link>
      </li>
    );
  }
}

export default PokemonIndexItem;
