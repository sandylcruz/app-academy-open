const MovingObject = require("./moving_object.js");

window.addEventListener("DOMContentLoaded", () => {
  const canvasElement = document.getElementById("game-canvas");
  canvasElement.height = window.innerHeight;
  canvasElement.width = window.innerWidth;
  const context = canvasElement.getContext("2d");
  const newObject = new MovingObject({
    pos: [100, 50],
    vel: 5,
    radius: 60,
    color: "red",
  });

  newObject.draw(context);
  setTimeout(() => {
    context.clearRect(0, 0, canvasElement.width, canvasElement.height);
    newObject.move();
    newObject.draw(context);
  }, 2000);
});

window.MovingObject = MovingObject;
