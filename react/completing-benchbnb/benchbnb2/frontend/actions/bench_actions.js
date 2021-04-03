export const RECEIVE_BENCHES = "RECEIVE_BENCHES";
import * as BenchAPIUtil from "../util/bench_api_util.js";

const receiveBenches = (benches) => ({
  type: RECEIVE_BENCHES,
  benches,
});
// dispatch accepts object or function

// implicit return
export const fetchBenches = (filters) => (dispatch) =>
  BenchAPIUtil.fetchBenches(filters).then((benches) =>
    dispatch(receiveBenches(benches))
  );

// Thunk is a function that accept

// thunk middleware checks if it is a function
// if it is a function, it NOT send it to the reducer
// if it is a function, it wil invoke the function instead
