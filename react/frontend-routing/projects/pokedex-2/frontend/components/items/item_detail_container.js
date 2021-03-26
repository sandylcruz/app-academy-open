import { connect } from "react-redux";
import ItemDetail from "./item_detail.jsx";
import { selectItem } from "../../reducers/selectors";

const mapStateToProps = (state, ownProps) => {
  const id = ownProps.match.params.itemId;

  return {
    item: selectItem(state, id),
  };
};

export default connect(mapStateToProps)(ItemDetail);
