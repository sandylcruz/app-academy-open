const View = require("./toh-views.js");
const Game = require("../game.js");

$(() => {
  const $rootEl = $(".hanoi");
  const game = new Game();
  const view = new View(game, $rootEl);
});

// document.addEventListener("DOMContentLoaded", () => {});
