import React from "react";
// import redux from "react-redux";
import ReactDOM from "react-dom";
import { fetchAllPokemon } from "./util/api_util.js";
import { receiveAllPokemon } from "./actions/pokemon_actions.js";
import configureStore from "./store/store.js";

document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("main");
  const store = configureStore();
  ReactDOM.render(<h1>Pokedex</h1>, rootEl);

  window.fetchAllPokemon = fetchAllPokemon;
  window.receiveAllPokemon = receiveAllPokemon;

  window.getState = store.getState;
  window.dispatch = store.dispatch;
});
