import { RECEIVE_BENCHES } from "../actions/bench_actions.js";

const defaultState = {};

const benchesReducer = (state = defaultState, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_BENCHES:
      return action.benches;
    default:
      return state;
  }
};

export default benchesReducer;
