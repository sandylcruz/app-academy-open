import React, { useCallback } from "react";
import { useDispatch, useSelector } from "react-redux";
import BenchIndex from "../bench_index/bench_index.jsx";
import BenchMap from "../bench_map/bench_map.jsx";
import { fetchBenches as fetchBenchesAction } from "../../actions/bench_actions.js";
import Search from "./search.jsx";
import { benchesSelector } from "../../reducers/selectors.js";

const SearchContainer = (props) => {
  // const benches = useSelector(benchesSelector);

  const benches = useSelector((state) => {
    return benchesSelector(state);
  });
  // useSelector supplies state to callback. Takes redux store state and passes it through.
  const dispatch = useDispatch();

  const fetchBenches = useCallback(() => dispatch(fetchBenchesAction()), [
    dispatch,
  ]);

  return (
    <Search {...props} fetchBenches={fetchBenches} benches={benches} />
    // <BenchIndex {...props} fetchBenches={fetchBenches} benches={benches} />
  );
};

export default SearchContainer;

// Class Component Version
// const mapDispatchToProps = (dispatch) => ({
//   fetchBenches: () => dispatch(fetchBenches()),
// });

// const render = () => {
//   const benches = state.entities;
// };

// export default connect(mapStateToProps, mapDispatchToProps)(BenchIndex);
