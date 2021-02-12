const Board = require("./board");


function Game () {
  this.players = { :x => player1, :o => player2}
  this.turn = :x
}

Game.prototype.promptMove = function() {}
Game.prototype.switchTurn = function() {}
Game.prototype.winner = function() {}

Game.prototype.run = function(reader, completionCallback) {
  until board.won || board.draw
}