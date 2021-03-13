import React from "react";
import ReactDOM from "react-dom";
import configureStore from "./store/store.js";

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
});
