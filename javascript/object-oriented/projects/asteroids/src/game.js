const Asteroid = require("./asteroid");
const Ship = require("./ship.js");
const Bullet = require("./bullet.js");

function Game({ height, width }) {
  this.height = height;
  this.width = width;
  this.bullets = [];
  this.asteroids = [];
  this.addAsteroids();

  this.ship = new Ship({
    pos: this.randomPosition(),
    game: this,
  });
}
Game.BG_COLOR = "#000000";
Game.NUM_ASTEROIDS = 10;

Game.prototype.allObjects = function allObjects() {
  return [].concat(this.ship, this.asteroids, this.bullets);
};

Game.prototype.add = function add(object) {
  if (object instanceof Asteroid) {
    this.asteroids.push(object);
  } else if (object instanceof Bullet) {
    this.bullets.push(object);
  } else if (object instanceof Ship) {
    this.ships.push(object);
  } else {
    throw new Error("unknown type of object");
  }
};

Game.prototype.addAsteroids = function () {
  const asteroids = [];

  for (let i = 0; i < Game.NUM_ASTEROIDS; i++) {
    const newAsteroid = new Asteroid({
      pos: this.randomPosition(),
      game: this,
    });
    asteroids.push(newAsteroid);
  }

  this.asteroids = asteroids;
};

Game.prototype.randomPosition = function () {
  const x = Math.random() * this.width;
  const y = Math.random() * this.height;
  const coordinatePair = [x, y];

  return coordinatePair;
};

Game.prototype.draw = function (context) {
  context.clearRect(0, 0, this.width, this.height);
  context.fillStyle = Game.BG_COLOR;

  for (let i = 0; i < this.allObjects().length; i++) {
    const movingObject = this.allObjects()[i];

    movingObject.draw(context);
  }
};

Game.prototype.moveObjects = function () {
  const allObjects = this.allObjects();

  allObjects.forEach((asteroid) => {
    asteroid.move();
  });
};

Game.prototype.wrap = function (position) {
  const x = position[0];
  const y = position[1];

  const nextX = x >= 0 ? x % this.width : x + this.width;
  const nextY = y >= 0 ? y % this.height : y + this.height;

  return [nextX, nextY];
};

Game.prototype.checkCollisions = function () {
  // for (let i = 0; i < this.asteroids.length; i++) {
  //   for (let j = i + 1; j < this.asteroids.length; j++) {
  //     const object1 = this.asteroids[i];
  //     const object2 = this.asteroids[j];
  //     if (object1.isCollidedWith(object2)) {
  //       this.remove(object1);
  //       this.remove(object2);
  //     }
  //   }
  // }
  for (let i = 0; i < this.asteroids.length; i++) {
    const asteroid = this.asteroids[i];

    if (asteroid.isCollidedWith(this.ship)) {
      asteroid.collideWith(this.ship);
    }
  }
};

Game.prototype.remove = function remove(object) {
  if (object instanceof Bullet) {
    this.bullets.splice(this.bullets.indexOf(object), 1);
  } else if (object instanceof Asteroid) {
    this.asteroids.splice(this.asteroids.indexOf(object), 1);
  } else if (object instanceof Ship) {
    this.ships.splice(this.ships.indexOf(object), 1);
  } else {
    throw new Error("unknown type of object");
  }
};

Game.prototype.step = function () {
  this.moveObjects();
  this.checkCollisions();
};

Game.prototype.isOutOfBounds = function (pos) {
  // console.log("***********", pos, this.width, this.height);
  return (
    pos[0] < 0 || pos[1] < 0 || pos[0] > this.width || pos[1] > this.height
  );
};

module.exports = Game;
