import {
  RECEIVE_ALL_POKEMON,
  RECEIVE_SINGLE_POKEMON,
  START_LOADING_ALL_POKEMON,
  START_LOADING_SINGLE_POKEMON,
} from "../actions/pokemon_actions";

const initialState = {
  loading: false,
};

const loadingReducer = (state = initialState, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ALL_POKEMON:
      return Object.assign({}, state, { loading: true });
    case RECEIVE_SINGLE_POKEMON:
      return Object.assign({}, state, { loading: true });
    case START_LOADING_ALL_POKEMON:
      return Object.assign({}, state, { loading: true });
    case START_LOADING_SINGLE_POKEMON:
      return Object.assign({}, state, { loading: true });
    default:
      return state;
  }
};
export default loadingReducer;
