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
    this.restartGame = this.restartGame.bind(this);
  }

  restartGame() {
    const board = new MinesweeperBoard(9, 10);
    this.setState({ board: board });
  }

  updateGame(tile, altKeyPress) {
    if (altKeyPress) {
      tile.toggleFlag();
    } else {
      tile.explore();
    }

    this.setState({ board: this.state.board });
  }

  render() {
    let modal;
    let text;

    if (this.state.board.won() || this.state.board.lost()) {
      text = this.state.board.won() ? "You won" : "You lost";
      modal = (
        <div className="modal-screen">
          <div className="modal-content">
            <p>{text}</p>
            <button onClick={this.restartGame}>Play Again</button>
          </div>
        </div>
      );
    }

    return (
      <div>
        {modal}
        <Board board={this.state.board} updateGame={this.updateGame} />
      </div>
    );
  }
}

export default Game;
