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

function Root() {
  return (
    <div className="content">
      <h1>Super Awesome Todo List</h1>
    </div>
  );
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Root />, document.getElementById("main"));
  const store = configureStore();
  window.store = store;
  window.actions = {
    receiveTodo,
    receiveTodos,
    removeTodo,
    receiveStep,
    receiveSteps,
    removeStep,
  };
});

// store.dispatch(actions.receiveTodos(newTodos));
