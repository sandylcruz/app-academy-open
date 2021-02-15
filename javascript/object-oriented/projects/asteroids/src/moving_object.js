function MovingObject(options) {
  this.pos = options.pos; // [100, 200]
  this.vel = options.vel; // [2, 3]
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
  this.pos = this.game.wrap(nextPos);
};

module.exports = MovingObject;
