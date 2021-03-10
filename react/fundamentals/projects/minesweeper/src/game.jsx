import React from "react";
import ReactDOM from "react-dom";
import Board from "./board.jsx";

class Game extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      board: new Minesweeper.Board(),
    };

    this.render = this.render.bind(this);
    this.updateGame = this.updateGame.bind(this);

    this.render();
  }

  updateGame() {}

  render() {
    return <h1>Hi</h1>;
  }
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Game />, document.getElementById("main"));
});
