const View = require("./view.js");
const Board = require("./board.js");

$(function () {
  const rootEl = $(".snake-game");
  new View(rootEl);
});
