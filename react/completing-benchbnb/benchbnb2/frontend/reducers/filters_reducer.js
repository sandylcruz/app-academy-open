import { UPDATE_BOUNDS } from "../actions/filter_actions";

const defaultState = {
  bounds: {},
};

const filtersReducer = (state = defaultState, action) => {
  Object.freeze(state);

  switch (action.type) {
    case UPDATE_BOUNDS: {
      return {
        ...state,
        bounds: action.bounds,
      };
    }
    default: {
      return state;
    }
  }
};

export default filtersReducer;
