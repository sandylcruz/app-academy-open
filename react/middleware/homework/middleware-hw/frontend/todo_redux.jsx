import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store";

import Root from "./components/root";

document.addEventListener("DOMContentLoaded", () => {
  const preloadedState = localStorage.state
    ? JSON.parse(localStorage.state)
    : {};
  let store = configureStore(preloadedState);
  store.dispatch = addLoggingToDispatch(store);

  const root = document.getElementById("content");
  ReactDOM.render(<Root store={store} />, root);
});

const addLoggingToDispatch = (store) => {
  const originalStore = store.dispatch;

  return (action) => {
    console.log("Old state:", store.getState());
    console.log("Action:", action);
    console.log("Original dispatch:", originalStore(action));
    console.log("New state:", store.getState());
  };
};
