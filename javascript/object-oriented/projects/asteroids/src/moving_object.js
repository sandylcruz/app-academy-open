const utils = require("./utils.js");
function MovingObject(options) {
  this.pos = options.pos;
  this.vel = options.vel;
  this.radius = options.radius;
  this.color = options.color;
  this.game = options.game;
}

MovingObject.prototype.draw = function (ctx) {
  ctx.beginPath();
  ctx.fillStyle = this.color;
  ctx.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI);
  ctx.stroke();
  ctx.fill();
};

MovingObject.prototype.move = function () {
  const nextPos = [this.pos[0] + this.vel[0], this.pos[1] + this.vel[1]];

  if (this.game.isOutOfBounds(this.pos)) {
    if (this.isWrappable) {
      const wrappedNextPosition = this.game.wrap(nextPos);

      this.pos = wrappedNextPosition;
    } else {
      this.remove();
    }
  } else {
    this.pos = nextPos;
  }
};

MovingObject.prototype.isCollidedWith = function (otherObject) {
  const distance = utils.dist(this.pos, otherObject.pos);

  const collisionDistance = this.radius + otherObject.radius;
  return distance < collisionDistance;
};

MovingObject.prototype.remove = function remove() {
  this.game.remove(this);
};

MovingObject.prototype.isWrappable = true;

module.exports = MovingObject;
