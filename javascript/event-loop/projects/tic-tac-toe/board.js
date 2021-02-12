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

  return this.grid[position[0]][position[1]] === null;
};

Board.prototype.placeMark = function (position, mark) {
  console.log(this.grid);
  if (this.isEmpty(position) && this.validMove(position, mark)) {
    this.grid[position[0]][position[1]] = mark;
    return true;
  } else {
    console.log("position not empty");
    return false;
  }
};
const board = new Board();
Board.marks = ["x", "o"];
console.log(board.isEmpty([1, 0]));
// board.placeMark([1, 0], "x");
// board.displayBoard();

// Board.prototype.full = function() {

// }

// Board.prototype.won = function() {

// }

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

function meow() {}

const bark = () => {};

const getOne = () => 1;

const getOne = () => {
  return 1;
};

const getOneGetter = () => {
  return () => {
    return 1;
  };
};

const getOneGetter = () => () => 1;

const oneGetter = getOneGetter();
