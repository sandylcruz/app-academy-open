const Coord = require(./coord.js);

class Snake {
  constructor() {
    this.direction = "N";
    this.segments = [];
    this.board = board;
  }

  move() {
    this.segments.pop(); // remove tail
    const newHead = 
  }

  turn(newDirection) {}

  eatApple() {}

  isOccupying() {}

  head() {
    return this.segments[0]
  }

  isValid() {}

  Snake.DIRECTIONS = {
    "N": new Coord[-1, 0],
    "E": new Coord[0, 1],
    "S": new Coord[1, 0],
    "W": new Coord[0, -1]
  }
}

module.exports = Snake;