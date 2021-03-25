import { combineReducers } from "redux";
import movesReducer from "./moves_reducer.js";
import itemsReducer from "./items_reducer.js";
import pokemonReducer from "./pokemon_reducer";

const entitiesReducer = combineReducers({
  pokemon: pokemonReducer,
  // moves: movesReducer,
  items: itemsReducer,
});

export default entitiesReducer;
