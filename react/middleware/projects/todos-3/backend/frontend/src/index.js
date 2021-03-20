import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store.js";
import {
  receiveTodo,
  receiveTodos,
  removeTodo,
  fetchTodos,
} from "./actions/todo_actions.js";

import {
  receiveStep,
  receiveSteps,
  removeStep,
  fetchSteps,
} from "./actions/step_actions.js";

import { allTodos } from "./reducers/selectors.js";
import App from "./components/app.jsx";
import Root from "./components/root.jsx";
import thunk from "../middleware/thunk.js";

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
    fetchSteps,
  };
  window.selectors = {
    allTodos,
    thunk,
    fetchTodos,
  };
});

// store.dispatch(actions.receiveTodos(newTodos));
