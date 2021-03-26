import React from "react";
import { Route } from "react-router-dom";
import Item from "../items/item.js";
import ItemDetailContainer from "./../items/item_detail_container";
import ItemDetail from "../items/item_detail.jsx";

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
    if (!this.props.pokemon) {
      return <h1>Loading</h1>;
    }

    return (
      <div className="pokemon-detail">
        <figure>
          <img src={this.props.pokemon.imageUrl}></img>
        </figure>
        <section className="pokemon-information">
          <h1>{this.props.pokemon.name}</h1>
          <ul>
            <li>Type: {this.props.pokemon.pokeType}</li>
            <li>Attack: {this.props.pokemon.attack}</li>
            <li>Defense: {this.props.pokemon.defense} </li>
            <li className="text">Moves: {this.props.moves.join(", ")}</li>
          </ul>
        </section>

        <section className="toys">
          <ul className="toy-list">
            {this.props.items.map((item) => (
              <Item key={item.name} item={item} />
            ))}
          </ul>
        </section>
        <Route
          path="/pokemon/:pokemonId/item/:itemId"
          component={ItemDetailContainer}
        />
      </div>
    );
  }
}

export default PokemonDetail;
