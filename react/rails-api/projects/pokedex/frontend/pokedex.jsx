import React from "react";
// import redux from "react-redux";
import ReactDOM from "react-dom";
import { fetchAllPokemon } from "./util/api_util.js";
import {
  receiveAllPokemon,
  requestAllPokemon,
} from "./actions/pokemon_actions.js";
import configureStore from "./store/store.js";
import { selectAllPokemon } from "./reducers/selectors.js";

document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("main");
  const store = configureStore();
  ReactDOM.render(<h1>Pokedex</h1>, rootEl);

  window.fetchAllPokemon = fetchAllPokemon;
  window.receiveAllPokemon = receiveAllPokemon;
  window.requestAllPokemon = requestAllPokemon;
  window.selectAllPokemon = selectAllPokemon;

  window.getState = store.getState;
  window.dispatch = store.dispatch;
});
