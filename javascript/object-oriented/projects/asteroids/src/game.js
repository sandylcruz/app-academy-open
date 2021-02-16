const Asteroid = require("./asteroid");
const MovingObject = require("./moving_object.js");
const Utils = require("./utils.js");

function Game({ height, width }) {
  this.height = height;
  this.width = width;
  this.addAsteroids();
  this.ships = [];
}

Game.NUM_ASTEROIDS = 5;

Game.prototype.allObjects = function () {
  return [].concat(this.ships, this.asteroids);
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

  for (let i = 0; i < this.asteroids.length; i++) {
    const asteroid = this.asteroids[i];

    asteroid.draw(context);
  }
};

Game.prototype.moveObjects = function () {
  this.asteroids.forEach((asteroid) => {
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
  for (let i = 0; i < this.asteroids.length; i++) {
    for (let j = i + 1; j < this.asteroids.length; j++) {
      const object1 = this.asteroids[i];
      const object2 = this.asteroids[j];

      if (object1.isCollidedWith(object2)) {
        this.remove(object1);
        this.remove(object2);
      }
    }
  }
};

Game.prototype.remove = function (asteroidToRemove) {
  const newAsteroids = [];

  for (let i = 0; i < this.asteroids.length; i++) {
    const asteroid = this.asteroids[i];
    if (asteroidToRemove != asteroid) {
      newAsteroids.push(asteroid);
    }
  }

  this.asteroids = newAsteroids;
};

Game.prototype.step = function () {
  this.moveObjects();
  this.checkCollisions();
};

module.exports = Game;
