function MovingObject(options) {
  this.pos = options.pos; // [100, 200]
  this.vel = options.vel;
  this.radius = options.radius;
  this.color = options.color;
}

MovingObject.prototype.draw = function (ctx) {
  ctx.beginPath();
  ctx.fillStyle = this.color;
  ctx.arc(this.pos[0], this.pos[1], this.radius, 0, 2 * Math.PI);
  ctx.stroke();
  ctx.fill();
};

MovingObject.prototype.move = function () {
  const nextPos = [this.pos[0] + this.vel, this.pos[1] + this.vel];
  this.pos = nextPos;
};

module.exports = MovingObject;
