import { RECEIVE_SINGLE_POKEMON } from "./../actions/pokemon_actions";

const itemsReducer = (state = {}, action) => {
  let nextState;

  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SINGLE_POKEMON:
      return (nextState = action.payload.items);
  }
};

export default ItemsReducer;
