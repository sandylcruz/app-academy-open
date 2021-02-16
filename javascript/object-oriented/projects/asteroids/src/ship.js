const MovingObject = require("./moving_object.js");
const utils = require("./utils.js");

function Ship(options) {
  MovingObject.call(this, {
    pos: options.pos,
    radius: Ship.RADIUS,
    color: Ship.COLOR,
    vel: options.vel || [0, 0],
    game: options.game,
  });
}

utils.inherits(Ship, MovingObject);

Ship.prototype.relocate = function () {
  this.pos = this.game.randomPosition();
  this.vel = [0, 0];
};

Ship.prototype.power = function (impulse) {
  const x = this.vel[0];
  const y = this.vel[1];

  const newVelocity = [x + impulse[0], y + impulse[1]];
  this.vel = newVelocity;
};

Ship.RADIUS = 15;
Ship.COLOR = "red";

module.exports = Ship;
