const Coord = require("./coord.js");

class Snake {
  DIRECTIONS = {
    N: new Coord(-1, 0),
    E: new Coord(0, 1),
    S: new Coord(1, 0),
    W: new Coord(0, -1),
  };

  constructor() {
    this.direction = "N";
    this.segments = [[5, 5]];
    this.board = board;
  }

  move() {
    this.segments.pop(); // remove tail
    const directionCoordinate = DIRECTIONS[this.direction];
    const newHead = this.head().plus(directionCoordinate);
    this.segments.unshift(newHead);
  }

  turn(newDirection) {}

  eatApple() {}

  isOccupying() {}

  head() {
    return this.segments[0];
  }

  isValid() {}
}

module.exports = Snake;
