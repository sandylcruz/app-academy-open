import React from "react";
import ReactDOM from "react-dom";
import Widget from "./components/widget";
import store from "./store";

document.addEventListener("DOMContentLoaded", () => {
  window.store = store;
  ReactDOM.render(<Widget store={store} />, document.getElementById("root"));
});
