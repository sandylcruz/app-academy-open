const Board = require("./board");

function Game() {
  this.board = new Board();
  this.players = ["x", "o"];
  this.currentPlayer = "x";
}

Game.prototype.isOver = function () {
  return this.board.isOver();
};

Game.prototype.promptMove = function (reader, callback) {
  this.board.displayBoard();
  reader.question("Where do you want to move to?", (answer) => {
    const coordinatePair = answer.split(" ").map((string) => {
      return Number(string);
    });

    callback(coordinatePair);
  });
};

Game.prototype.switchTurn = function () {
  if (this.currentPlayer === "x") {
    this.currentPlayer = "o";
  } else {
    this.currentPlayer = "x";
  }
};

Game.prototype.run = function (reader, completionCallback) {
  this.promptMove(reader, (coordinatePair) => {
    this.board.placeMark(coordinatePair, this.currentPlayer);
    this.switchTurn();
    this.board.displayBoard();
    if (this.isOver()) {
      completionCallback();
    } else {
      this.run(reader, completionCallback);
    }
  });
};

module.exports = Game;
