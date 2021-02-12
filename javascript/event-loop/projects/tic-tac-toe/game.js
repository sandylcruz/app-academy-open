const Board = require("./board");

function Game() {
  this.players = ["x", "o"];
  this.currentPlayer = "x";
}

// Game.prototype.promptMove = function () {};

Game.prototype.switchTurn = function () {
  if (this.currentPlayer === "x") {
    this.currentPlayer = "o";
  } else {
    this.currentPlayer = "x";
  }
};

const gm = new Game();
console.log(gm.currentPlayer);
console.log(gm.switchTurn());
console.log(gm.currentPlayer);

// Game.prototype.winner = function() {}

// Game.prototype.run = function(reader, completionCallback) {
//   until board.won || board.draw
// }
