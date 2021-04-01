import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store.js";
import Root from "./components/Root";
import { login, logout } from "./actions/session_actions.js";
import { fetchBenches } from "./actions/bench_actions.js";

document.addEventListener("DOMContentLoaded", () => {
  let store;

  if (window.currentUser) {
    const preloadedState = {
      entities: {
        users: { [window.currentUser.id]: window.currentUser },
      },
      session: { id: window.currentUser.id },
    };
    store = configureStore(preloadedState);
    delete window.currentUser;
  } else {
    store = configureStore();
  }

  window.getState = store.getState;
  window.dispatch = store.dispatch;
  window.login = login;
  window.logout = logout;
  window.fetchBenches = fetchBenches;

  const root = document.getElementById("root");
  ReactDOM.render(<Root store={store} />, root);
});
