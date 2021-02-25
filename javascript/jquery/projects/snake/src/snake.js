const Apple = require("./apple.js");
const Coord = require("./coord.js");

const DIRECTIONS = {
  N: new Coord(-1, 0),
  E: new Coord(0, 1),
  S: new Coord(1, 0),
  W: new Coord(0, -1),
};

class Snake {
  constructor(board) {
    this.direction = "N";
    this.segments = [new Coord(5, 5)];
    this.board = board;
  }

  move() {
    const head = this.segments[0]; // remove tail

    const directionCoordinate = DIRECTIONS[this.direction];
    const newHead = head.plus(directionCoordinate);
    if (this.isValid(newHead)) {
      this.segments.unshift(newHead);
      if (!this.eatApple()) {
        this.segments.pop();
      } else {
        this.board.resetApple();
      }
      return true;
    } else {
      return false;
    }
  }

  turn(newDirection) {
    this.direction = newDirection;
  }

  eatApple() {
    if (this.head().equals(this.board.apple.position)) {
      return true;
    } else {
      return false;
    }
  }

  head() {
    return this.segments[0];
  }

  isValid(coordinate) {
    return coordinate.isValid(this.board.dimension);
  }
}

module.exports = Snake;
