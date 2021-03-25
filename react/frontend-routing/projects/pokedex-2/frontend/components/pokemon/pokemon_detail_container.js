import { connect } from "react-redux";
import PokemonDetail from "./pokemon_detail.jsx";
import { requestSinglePokemon } from "./../../actions/pokemon_actions";

// state is the store state and how you read in the react world
const mapStateToProps = (state, ownProps) => {
  const id = ownProps.match.params.pokemonId;

  return {
    pokemon: state.entities.pokemon[id],
  }; // passing prop called pokemon
};

const mapDispatchToProps = (dispatch) => {
  return {
    requestSinglePokemon: (id) => dispatch(requestSinglePokemon(id)),
  };
};

export default connect(mapStateToProps, mapDispatchToProps)(PokemonDetail);
