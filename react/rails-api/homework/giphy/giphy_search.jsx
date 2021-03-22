import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";
import Root from "./components/root";
import { fetchSearchGiphys } from "./util/api_util.js";

document.addEventListener("DOMContentLoaded", () => {
  console.log("hello world");
  console.log(GIPHY_API_KEY);

  window.fetchSearchGiphys = fetchSearchGiphys;
});
