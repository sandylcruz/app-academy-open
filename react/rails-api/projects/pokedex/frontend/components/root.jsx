import React from "react";
import { Provider } from "react-redux";
import PokemonIndex from "./pokemon/pokemon_index.jsx";
import PokemonIndexContainer from "./pokemon/pokemon_index_container.js";

const Root = ({ store }) => (
  <Provider store={store}>
    <PokemonIndexContainer />
  </Provider>
);

export default Root;
