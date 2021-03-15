import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store.js";
import {
  receiveTodo,
  receiveTodos,
  removeTodo,
} from "./actions/todo_actions.js";

import {
  receiveStep,
  receiveSteps,
  removeStep,
} from "./actions/steps_actions.js";

import { allTodos } from "./reducers/selectors.js";
import App from "./components/app.jsx";
import Root from "./components/root.jsx";

document.addEventListener("DOMContentLoaded", () => {
  const store = configureStore();
  ReactDOM.render(<Root store={store} />, document.getElementById("main"));
  window.store = store;
  window.actions = {
    receiveTodo,
    receiveTodos,
    removeTodo,
    receiveStep,
    receiveSteps,
    removeStep,
  };
  window.selectors = {
    allTodos,
  };
});

// store.dispatch(actions.receiveTodos(newTodos));
