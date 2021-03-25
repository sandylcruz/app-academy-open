import {
  RECEIVE_ALL_POKEMON,
  RECEIVE_POKEMON,
} from "./../actions/pokemon_actions";

const pokemonReducer = (state = {}, action) => {
  let nextState;
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_ALL_POKEMON:
      return Object.assign({}, action.pokemon, state);
    case RECEIVE_POKEMON:
      return (nextState[action.pokemon.id] = action.pokemon);

    default:
      return state;
  }
};

export default pokemonReducer;
