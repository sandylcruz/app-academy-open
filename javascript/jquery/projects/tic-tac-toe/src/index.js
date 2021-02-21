const View = require("./ttt-view.js");
const Game = require("../game.js");

$(() => {
  const $containerElement = $("figure.ttt");
  const newGame = new Game();
  const view = new View(newGame, $containerElement);
});
