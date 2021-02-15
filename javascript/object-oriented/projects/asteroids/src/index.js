const Game = require("./game.js");

window.addEventListener("DOMContentLoaded", () => {
  const canvasElement = document.getElementById("game-canvas");
  canvasElement.height = window.innerHeight;
  canvasElement.width = window.innerWidth;
  const context = canvasElement.getContext("2d");
  const game = new Game({
    height: window.innerHeight,
    width: window.innerWidth,
  });
  game.draw(context);
});
