import React, { useCallback } from "react";
import { useDispatch, useSelector } from "react-redux";

import BenchIndex from "../bench_index/bench_index.jsx";
import { fetchBenches as fetchBenchesAction } from "../../actions/bench_actions.js";

const benchesSelector = (state) => {
  return Object.keys(state.entities.benches).map((key) => {
    return state.entities.benches[key];
  });
};

const SearchContainer = (props) => {
  const benches = useSelector(benchesSelector);
  const dispatch = useDispatch();

  const fetchBenches = useCallback(() => dispatch(fetchBenchesAction()), [
    dispatch,
  ]);

  return (
    <BenchIndex {...props} fetchBenches={fetchBenches} benches={benches} />
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
