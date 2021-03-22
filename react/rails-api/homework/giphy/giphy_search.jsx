import React from "react";
import ReactDOM from "react-dom";
import store from "./store/store";
import Root from "./components/root";
import { fetchSearchGiphys } from "./util/api_util.js";
import { receiveSearchGiphys } from "./actions/giphy_actions.js";

document.addEventListener("DOMContentLoaded", () => {
  window.fetchSearchGiphys = fetchSearchGiphys;
  window.receiveSearchGiphys = receiveSearchGiphys;
  window.store = store;
});
