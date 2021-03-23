import React from "react";
import ReactDOM from "react-dom";
import { fetchAllPokemon } from "./util/api_util.js";

document.addEventListener("DOMContentLoaded", () => {
  const rootEl = document.getElementById("main");
  ReactDOM.render(<h1>Pokedex</h1>, rootEl);

  window.fetchAllPokemon = fetchAllPokemon;
});
