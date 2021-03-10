import React from "react";
import ReactDOM from "react-dom";
import Game from "./src/game.jsx";

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Game />, document.getElementById("main"));
});
