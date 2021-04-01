import React from "react";
import { fetchBenches } from "../../actions/bench_actions.js";
import BenchIndex from "./bench_index.jsx";

// const mapStateToProps = (state) => {
//   return {
//     benches: selectCurrentUser(state),
//   };
// };

// const mapDispatchToProps = (dispatch) => ({
//   fetchBenches: () => dispatch(fetchBenches()),
// });

const BenchIndexContainer = (props) => {
  return <BenchIndex />;
};

export default BenchIndexContainer;
