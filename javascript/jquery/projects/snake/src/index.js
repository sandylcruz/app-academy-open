const View = require("./view.js");
const Board = require("./board.js");

$(() => {
  const rootEl = $(".snake-game");
  const board = new Board(20);
  new View(rootEl);
});
