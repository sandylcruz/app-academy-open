function generateRow() {
  return [undefined, undefined, undefined];
}

function Board() {
  this.grid = [generateRow(), generateRow(), generateRow()];
  console.log(this.grid);
}

Board.prototype.displayBoard = function (board) {
  return console.log(this.grid);
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
    console.log(this.grid);
    return true;
  } else {
    return false;
  }
};
const board = new Board();
Board.marks = ["x", "o"];
// console.log(board.isEmpty([1, 0]));
// board.placeMark([1, 0], "x");
// board.placeMark([0, 0], "o");
// board.placeMark([1, 1], "x");
// board.placeMark([2, 1], "o");
// board.placeMark([1, 2], "x");

// board.placeMark([1, 0], "x");

// Board.prototype.full = function () {
//   this.grid;
// };

Board.prototype.won = function () {
  const winningCombinations;
};

// Board.prototype.draw = function() {
//   if (!this.won && this.full) {
//     return true
//   } elsif !this.full && !this.won {
//     return false
//   } else {
//     return true
//   }
// }

// Board.prototype.winner = function() {
//   if (this.won) {
//     console.log("winner")
//   }
// }
