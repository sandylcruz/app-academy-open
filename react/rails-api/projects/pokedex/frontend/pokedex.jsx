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
import Root from "./components/root.jsx";

document.addEventListener("DOMContentLoaded", () => {
  const store = configureStore();
  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);

  window.fetchAllPokemon = fetchAllPokemon;
  window.receiveAllPokemon = receiveAllPokemon;
  window.requestAllPokemon = requestAllPokemon;
  window.selectAllPokemon = selectAllPokemon;

  window.getState = store.getState;
  window.dispatch = store.dispatch;
});
