import { RECEIVE_SINGLE_POKEMON } from "./../actions/pokemon_actions";

const movesReducer = (state = {}, action) => {
  switch (action.type) {
    case RECEIVE_SINGLE_POKEMON:
      return {
        ...state,
        ...action.moves,
      };
    default:
      return state;
  }
};

export default movesReducer;
