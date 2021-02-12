function Board() {
  this.grid = [[], [], [], [], [], [], [], [], []];
}
board = new Board();
console.log(board);

Board.prototype.displayBoard = function (board) {};
Board.prototype.rows = function () {};

Board.prototype.cols = function () {};

Board.prototype.diagonals = function () {
  const downDiagonals = [
    [0, 0],
    [1, 1],
    [2, 2],
  ];
  const upDiagonals = [
    [0, 2],
    [1, 1],
    [2, 0],
  ];
};

Board.prototype.empty = function (position) {
  this[position] === 0 || this[position] === undefined;
};

// Board.prototype.validMove = function(position, mark) {
//   if (position[0] >= 0 && position[0] <= 2) {
//     return true
//   } else if (position[1] >= 0 && position[1] <= 2) {
//     return true
//   } else {
//     return false
//   }
// }

// Board.prototype.place_mark = function(position, mark) {
//   if (this.grid.empty?(position)) {
//     this.board[position] = mark;
//     return true
//   } else {
//     return false
//   }
// }

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
