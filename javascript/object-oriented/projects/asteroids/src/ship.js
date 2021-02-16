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

Ship.RADIUS = 15;
Ship.COLOR = "red";

module.exports = Ship;
