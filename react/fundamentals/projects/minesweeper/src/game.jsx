import React from "react";
import Board from "./Board.jsx";
import { Board as MinesweeperBoard } from "../minesweeper.js";

class Game extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      board: new MinesweeperBoard(9, 10),
    };

    this.updateGame = this.updateGame.bind(this);
  }

  updateGame(tile, altKeyPress) {
    console.log(tile);
    console.log(altKeyPress);
  }

  render() {
    return (
      <div>
        <Board board={this.state.board} updateGame={this.updateGame} />
      </div>
    );
  }
}

export default Game;
