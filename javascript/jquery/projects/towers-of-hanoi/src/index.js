const View = require("./hanoi-view.js");
const Game = require("../game.js");

$(() => {
  const $rootEl = $(".hanoi-group");
  const game = new Game();
  const view = new View(game, $rootEl);
});

// document.addEventListener("DOMContentLoaded", () => {});
