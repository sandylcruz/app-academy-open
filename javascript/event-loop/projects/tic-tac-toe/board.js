function generateRow() {
  return [undefined, undefined, undefined];
}

function Board() {
  this.grid = [generateRow(), generateRow(), generateRow()];
}

Board.prototype.displayBoard = function (board) {
  console.log(this.grid);
};

Board.prototype.validMove = function (position, mark) {
  if (position[0] >= 0 && position[0] <= 2) {
    return true;
  } else if (position[1] >= 0 && position[1] <= 2) {
    return true;
  } else if (this.grid[position[0]][position[1]].length === 0) {
    return true;
  } else {
    return false;
  }
};

Board.prototype.isEmpty = function (position) {
  if (!this.validMove(position)) {
    console.log("Is not valid position!");
  }

  return this.grid[position[0]][position[1]] === undefined;
};

Board.prototype.placeMark = function (position, mark) {
  if (this.isEmpty(position) && this.validMove(position, mark)) {
    this.grid[position[0]][position[1]] = mark;
    return true;
  } else {
    return false;
  }
};

Board.prototype.isFull = function () {
  for (let i = 0; i < 3; i++) {
    for (let j = 0; j < 3; j++) {
      const position = [i, j];

      if (this.isEmpty(position)) {
        return false;
      }
    }
  }
  return true;
};

Board.prototype.won = function () {
  const winningStreaks = [
    [
      [0, 0],
      [0, 1],
      [0, 2],
    ],
    [
      [1, 0],
      [1, 1],
      [1, 2],
    ],
    [
      [2, 0],
      [2, 1],
      [2, 2],
    ],
    // verticals
    [
      [0, 0],
      [1, 0],
      [2, 0],
    ],
    [
      [0, 1],
      [1, 1],
      [2, 1],
    ],
    [
      [0, 2],
      [1, 2],
      [2, 2],
    ],
    // diagonals
    [
      [0, 0],
      [1, 1],
      [2, 2],
    ],
    [
      [2, 0],
      [1, 1],
      [0, 2],
    ],
  ];

  for (let i = 0; i < winningStreaks.length; i++) {
    const winningStreak = winningStreaks[i];

    let firstValue;
    let isWin = true;
    for (let j = 0; j < winningStreak.length; j++) {
      const coordinatePair = winningStreak[j];
      const x = coordinatePair[0];
      const y = coordinatePair[1];
      const element = this.grid[x][y];

      if (element === undefined) {
        isWin = false;
        break;
      }

      if (j === 0) {
        firstValue = element;
      }

      if (element !== firstValue) {
        isWin = false;
        break;
      }
    }
    if (isWin) {
      return true;
    }
  }
  return false;
};

// return winningStreaks.some((winningStreak) => {
//   const [x, y] = winningStreak[0];
//   const firstElement = this.grid[x][y];

//   return winningStreak.every(([x, y]) => this.grid[x][y] === firstElement);
// });

const board = new Board();
Board.marks = ["x", "o"];
// board.placeMark([2, 0], "x");
// board.placeMark([1, 1], "x");
// board.placeMark([0, 2], "x");
// board.placeMark([2, 1], "o");
// board.placeMark([1, 2], "x");
// board.placeMark([1, 0], "x");
// board.placeMark([2, 0], "x");
// board.placeMark([0, 1], "x");
// board.placeMark([2, 2], "x");
// board.placeMark([0, 2], "x");
// board.displayBoard();
// console.log("+++++++");
// console.log("Is won?" + " " + board.won());

Board.prototype.isOver = function () {
  return this.won() || this.isFull();
};
// console.log("is the game over?");
// console.log(board.isOver());

Board.prototype.winner = function () {
  if (this.won) {
    console.log("You won");
  }
};

module.exports = Board;
