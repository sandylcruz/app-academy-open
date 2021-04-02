import React from "react";
import { connect } from "react-redux";
import BenchIndex from "./bench_index.jsx";
import { fetchBenches } from "../../actions/bench_actions.js";

const benchesSelector = (state) => {
  return Object.keys(state.entities.benches).map((key) => {
    return state.entities.benches[key];
  });
};

const mapStateToProps = (state) => {
  const benches = benchesSelector(state);

  return {
    benches,
  };
};

const mapDispatchToProps = (dispatch) => ({
  fetchBenches: () => dispatch(fetchBenches()),
});

const render = () => {
  const benches = state.entities;

  return <BenchIndex benches={benches} />;
};

export default connect(mapStateToProps, mapDispatchToProps)(BenchIndex);
