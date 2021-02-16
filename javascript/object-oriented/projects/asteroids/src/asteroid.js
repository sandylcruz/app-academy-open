const MovingObject = require("./moving_object.js");
const utils = require("./utils.js");
const Ship = require("./ship.js");

function Asteroid(options) {
  MovingObject.call(this, {
    pos: options.pos,
    vel: utils.randomVec(3),
    radius: Asteroid.RADIUS,
    color: Asteroid.COLOR,
    game: options.game,
  });
}

Asteroid.COLOR = "blue";
Asteroid.RADIUS = 15;

utils.inherits(Asteroid, MovingObject);

Asteroid.prototype.collideWith = function (otherObject) {
  if (otherObject instanceof Ship) {
    otherObject.relocate();
  }
};

module.exports = Asteroid;
