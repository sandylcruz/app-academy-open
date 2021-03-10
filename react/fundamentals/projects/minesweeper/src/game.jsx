import React from "react";
import ReactDOM from "react-dom";
import Board from "./board.jsx";
import { Board as MinesweeperBoard } from "../minesweeper.js";

class Game extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      board: new MinesweeperBoard(9, 10),
    };

    this.render = this.render.bind(this);
    this.updateGame = this.updateGame.bind(this);

    this.render();
  }

  updateGame() {}

  render() {
    return (
      <div>
        <Board board={this.state.board} updateGame={this.updateGame} />
        <p>Click to explore a tile. Alt + click to flag a tile</p>
      </div>
    );
  }
}

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Game />, document.getElementById("main"));
});
