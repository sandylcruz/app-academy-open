import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";
import Root from "./components/root";
import { HashRouter } from "react-router-dom";
import { selectPokemonMoveNames } from "./reducers/selectors.js";
import {
  receiveSinglePokemon,
  requestSinglePokemon,
} from "./actions/pokemon_actions.js";

document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("root");
  const store = configureStore();
  window.store = store;
  window.dispatch = store.dispatch;

  window.actions = {
    receiveSinglePokemon,
    requestSinglePokemon,
    selectPokemonMoveNames,
  };

  ReactDOM.render(<Root store={store} />, rootEl);
});
