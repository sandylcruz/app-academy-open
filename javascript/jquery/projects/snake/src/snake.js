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
    console.log(this.segments);
  }

  move() {
    const head = this.segments.pop(); // remove tail
    const directionCoordinate = DIRECTIONS[this.direction];
    const newHead = head.plus(directionCoordinate);
    this.segments.unshift(newHead);
  }

  turn(newDirection) {
    this.direction = newDirection;
  }

  eatApple() {
    if (this.head() === this.board.apple.position) {
      return true;
    } else {
      return false;
    }
  }

  isOccupying() {}

  head() {
    console.log(this.segments);
    return this.segments[0];
  }

  isValid() {}
}

module.exports = Snake;
