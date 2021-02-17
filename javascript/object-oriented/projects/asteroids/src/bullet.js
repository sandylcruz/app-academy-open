const MovingObject = require("./moving_object.js");
const utils = require("./utils.js");

function Bullet(options) {
  const newVel = [options.vel[0] * Bullet.SPEED, options.vel[1] * Bullet.SPEED];

  MovingObject.call(this, {
    pos: options.pos,
    vel: newVel,
    radius: Bullet.RADIUS,
    color: Bullet.COLOR,
    game: options.game,
  });
}

Bullet.RADIUS = 2;
Bullet.COLOR = "purple";
Bullet.SPEED = 15;

utils.inherits(Bullet, MovingObject);
Bullet.prototype.isWrappable = false;
module.exports = Bullet;
