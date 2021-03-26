import { connect } from "react-redux";
import ItemDetail from "./item_detail.jsx";
import { selectPokemonItems } from "../../reducers/selectors";

const mapStateToProps = (state, ownProps) => {
  const id = ownProps.match.params.pokemonId;

  return {
    items: selectPokemonItems(state, id),
  };
};

export default connect(mapStateToProps)(ItemDetail);
