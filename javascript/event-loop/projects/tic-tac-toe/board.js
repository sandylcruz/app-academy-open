function generateRow() {
  return [undefined, undefined, undefined];
}

function Board() {
  this.grid = [generateRow(), generateRow(), generateRow()];
}

// Board.prototype.renderBoard = {

// }

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
    // console.log(this.grid);
    console.log("hit this");
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

const board = new Board();
Board.marks = ["x", "o"];
console.log(board.isEmpty([1, 0]));
board.placeMark([2, 0], "x");
board.placeMark([1, 1], "x");
board.placeMark([0, 2], "x");
// board.placeMark([2, 1], "o");
// board.placeMark([1, 2], "x");
// board.placeMark([1, 0], "x");
// board.placeMark([2, 0], "x");
// board.placeMark([0, 1], "x");
// board.placeMark([2, 2], "x");
// board.placeMark([0, 2], "x");
board.displayBoard();
console.log("+++++++");
console.log(board.won());

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
