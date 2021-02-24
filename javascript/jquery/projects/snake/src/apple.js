const Board = require("./board.js");
const Coord = require("./coord.js");

class Apple {
  constructor(board) {
    this.board = board;
    this.replace();
  }

  replace() {
    const x = Math.floor(Math.random() * this.board.dimension);
    const y = Math.floor(Math.random() * this.board.dimension);

    this.position = new Coord(x, y);
  }
}

module.exports = Apple;
