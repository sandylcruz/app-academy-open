const { render } = require("react-dom");

import React from "react";
import ReactDOM from "react-dom";

function Root() {
  return (
    <div className="content">
      <h1>Super Awesome Todo List</h1>
    </div>
  );
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Root />, document.getElementById("main"));
});
