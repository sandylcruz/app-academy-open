import { connect } from "react-redux";
import {
  selectPokemonItems,
  selectPokemonMoveNames,
} from "../../reducers/selectors";

const mapStateToProps = (state, ownProps) => {
  const id = ownProps.match.params.pokemonId;

  return {
    items: selectPokemonItems(state, id),
  };
};

export default connect(mapStateToProps)(Item);
