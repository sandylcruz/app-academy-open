const MovingObject = require("./moving_object.js");

function Ship(options) {
  options.radius = Ship.RADIUS;
  options.color = Ship.COLOR;
  options.vel = options.vel || [0, 0];
}

Ship.RADIUS = 15;
Ship.COLOR = "red";
