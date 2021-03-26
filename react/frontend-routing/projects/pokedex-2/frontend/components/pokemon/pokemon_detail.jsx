import React from "react";
// import ItemDetailContainer from "./../items/item_detail_container";

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
      <div className="pokemon-detail">
        <figure>
          <img src={this.props.pokemon.imageUrl}></img>
        </figure>
        <h2>{this.props.pokemon.name}</h2>
        <ul>
          <li>Type: {this.props.pokemon.pokeType}</li>
          <li>Attack: {this.props.pokemon.attack}</li>
          <li>Defense: {this.props.pokemon.defense} </li>
          <li className="text">Moves: {this.props.moves.join(", ")}</li>

          <li>Items:</li>
          {this.props.items.map((item) => {
            <li>{item}</li>;
          })}
        </ul>
      </div>
    );
  }
}

export default PokemonDetail;
