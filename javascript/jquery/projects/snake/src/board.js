const Snake = require("./snake.js");
const Apple = require("./apple.js");

class Board {
  constructor(dimension) {
    this.dimension = dimension;
    this.snake = new Snake(this);
    this.apple = new Apple(this);
  }

  validPosition(coordinate) {
    return (
      coordinate.i >= 0 &&
      coordinate.i < this.dimension &&
      coordinate.j >= 0 &&
      coordinate.j < this.dimension
    );
  }
}

module.exports = Board;
