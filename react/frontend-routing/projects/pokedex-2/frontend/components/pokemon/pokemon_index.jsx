import React from "react";
import PokemonIndexItem from "./pokemon_index_item.jsx";
import { Route } from "react-router-dom";
import PokemonDetailContainer from "./pokemon_detail_container.js";
import FormContainer from "../form/form_container.js";

class PokemonIndex extends React.Component {
  constructor(props) {
    super(props);
  }

  componentDidMount() {
    this.props.requestAllPokemon();
  }

  render() {
    return (
      <section className="pokedex">
        <Route exact path="/" component={FormContainer} />
        <Route path="/pokemon/:pokemonId" component={PokemonDetailContainer} />;
        <ul>
          {this.props.pokemon.map((poke) => (
            <PokemonIndexItem key={poke.id} pokemon={poke} />
          ))}
        </ul>
      </section>
    );
  }
}

export default PokemonIndex;
