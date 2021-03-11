import React from "react";
import Board from "./Board.jsx";
import Modal from "./Modal.jsx";
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
    const {
      state: { board },
    } = this;

    const shouldShowModal = board.won() || board.lost();

    return (
      <div>
        {shouldShowModal && (
          <Modal restartGame={this.restartGame}>
            {board.won() ? "You won" : "You lost"}
          </Modal>
        )}
        <Board board={this.state.board} updateGame={this.updateGame} />
      </div>
    );
  }
}

export default Game;
