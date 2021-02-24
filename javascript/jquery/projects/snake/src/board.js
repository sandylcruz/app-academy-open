const Snake = require("./snake.js");
const Apple = require("./apple.js");

class Board {
  constructor(dimension) {
    this.dimension = dimension;
    this.snake = new Snake(this);
    this.apple = new Apple(this);
  }

  blankGrid(dimension) {
    const grid = [];
    for (let i = 0; i < this.dimension; i++) {
      const row = grid[i];
      for (let j = 0; j < this.dimension; j++) {
        row.push(".");
      }

      grid.push(row);
    }
    return grid;
  }

  render(dimension) {
    const grid = this.blankGrid(this.dimension);
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
