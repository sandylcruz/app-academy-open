import React from "react";
import ReactDOM from "react-dom";
import Board from "./board.jsx";
import Tiles from "./tiles.jsx";
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

        <div className="game-elements">
          <Tiles />
        </div>
      </div>
    );
  }
}

export default Game;
