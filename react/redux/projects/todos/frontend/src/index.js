import React from "react";
import ReactDOM from "react-dom";
import store from "./store/store.js";

function Root() {
  return (
    <div className="content">
      <h1>Super Awesome Todo List</h1>
    </div>
  );
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Root />, document.getElementById("main"));
  window.store = store;
});
