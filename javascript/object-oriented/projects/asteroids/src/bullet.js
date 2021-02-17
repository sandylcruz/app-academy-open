const MovingObject = require("./moving_object.js");
const utils = require("./utils.js");
const Game = require("./game.js");

function Bullet(options) {
  MovingObject.call(this, {
    pos: options.pos,
    vel: utils.randomVec(3),
    radius: Bullet.RADIUS,
    color: Bullet.COLOR,
    game: options.game,
  });
}

Bullet.RADIUS = 2;
Bullet.COLOR = "purple";
Bullet.SPEED = 15;

utils.inherits(Bullet, MovingObject);

module.exports = Bullet;
