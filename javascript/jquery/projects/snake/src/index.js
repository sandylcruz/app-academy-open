const GameView = require("./snake-view.js");
const Board = require("./board.js");

window.addEventListener("DOMContentLoaded", () => {
  const canvasElement = document.getElementById("game-canvas");
  canvasElement.height = window.innerHeight;
  canvasElement.width = window.innerWidth;
  const context = canvasElement.getContext("2d");
  const gameView = new GameView({ context: context });
  gameView.start();
});
