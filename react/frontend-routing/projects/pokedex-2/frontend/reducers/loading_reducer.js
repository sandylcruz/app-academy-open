import {
  RECEIVE_ALL_POKEMON,
  RECEIVE_SINGLE_POKEMON,
  RECEIVE_POKEMON_ERRORS,
  START_LOADING_ALL_POKEMON,
  START_LOADING_SINGLE_POKEMON,
} from "../actions/pokemon_actions";

const initialState = {
  loading: false,
};

const loadingReducer = (state = initialState, action) => {
  switch (action.type) {
    case RECEIVE_ALL_POKEMON:
      return Object.assign({}, state, { loading: true });
    case RECEIVE_SINGLE_POKEMON:
      return Object.assign({}, state, { loading: true });
    case START_LOADING_ALL_POKEMON:
      return Object.assign({}, state, { loading: true });
    case START_LOADING_SINGLE_POKEMON:
      return Object.assign({}, state, { loading: true });
  }
};
