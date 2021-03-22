import { RECEIVE_SEARCH_GIPHYS } from "../actions/giphy_actions";

const giphysReducer = (state = [], action) => {
  switch (action.type) {
    case RECEIVE_SEARCH_GIPHYS:
      const newState = [...state, ...action.giphys];
      return newState;
    default:
      return state;
  }
};

export default giphysReducer;
